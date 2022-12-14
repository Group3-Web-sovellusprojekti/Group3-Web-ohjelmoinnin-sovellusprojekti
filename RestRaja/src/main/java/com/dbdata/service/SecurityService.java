package com.dbdata.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
     * @param uname
     * @param pw
     * @return
     */
    public User register(String uname, String pw) {

        User u = new User(uname, myEncoder.encode(pw));

        User existingUser = repo.findByUsername(uname);
        if (existingUser != null && existingUser.getUsername() != null && !existingUser.getUsername().isEmpty()) {
            return null;
        }
        repo.save(u);
        return u;
    }

    /**
     * Login user. Return token or null if not found or wrong password.
     * 
     * @param uname
     * @param pw
     * @return
     */
    public String login(String uname, String pw) {

        User u = repo.findByUsername(uname);

        if (u == null || !myEncoder.matches(pw, u.password)) {
            return null;
        }

        Algorithm alg = Algorithm.HMAC256(jwtKey);
        return JWT.create().withSubject(u.username).sign(alg);
    }

    public String deleteUser(String uname, String pw) {

        User u = repo.findByUsername(uname);
        String s = "success";

        if (!myEncoder.matches(pw, u.password)) {
            return null;
        }

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