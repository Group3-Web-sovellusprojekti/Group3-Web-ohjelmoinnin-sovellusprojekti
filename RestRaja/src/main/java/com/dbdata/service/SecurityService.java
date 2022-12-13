package com.dbdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.dbdata.data.User;
import com.dbdata.repo.PersonRepo;

@Service
public class SecurityService {

    @Autowired
    PersonRepo repo;

    @Autowired
    PasswordEncoder myEncoder;

    @Value("${jwt.secret}")
    private String jwtKey;

    /**
     * Register new user or update existing one
     * 
     * @param username
     * @param password
     * @return
     */
    public User register(String username, String password) {
        BCryptPasswordEncoder enc = new BCryptPasswordEncoder();
        User u = new User(username, enc.encode(password));

        User existingUser = repo.findByUsername(username);
        if (existingUser != null && existingUser.getUsername() != null && !existingUser.getUsername().isEmpty()) {
            return null;
        }
        repo.save(u);
        return u;
    }

    /**
     * Login user. Return token or null if not found or wrong password.
     * 
     * @param username
     * @param password
     * @return
     */
    public String login(String username, String password) {

        User u = repo.findByUsername(username);

        if (u == null || !myEncoder.matches(password, u.password)) {
            return null;
        }

        Algorithm alg = Algorithm.HMAC256(jwtKey);
        return JWT.create().withSubject(u.username).sign(alg);
    }

    /**
     * Delete user. Return String and delete user if authorization successful.
     * 
     * @param uname
     * @param pw
     * @return
     */
    public String deleteUser(String uname) {

        User u = repo.findByUsername(uname);
        String s = "User delete successful";

        repo.deleteById(u.idUser);
        return s;
    }

    /**
     * Verify jwt token and return username if token is valid
     * 
     * @param jwtToken
     * @return
     */
    public String validateJwt(String jwtToken) {
        Algorithm alg = Algorithm.HMAC256(jwtKey);
        JWTVerifier verifier = JWT.require(alg).build();

        try {
            DecodedJWT jwt = verifier.verify(jwtToken);
            return jwt.getSubject();
        } catch (JWTVerificationException e) {
        }

        return null;
    }
}
