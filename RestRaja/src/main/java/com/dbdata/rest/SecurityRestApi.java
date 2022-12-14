package com.dbdata.rest;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dbdata.data.User;
import com.dbdata.service.SecurityService;
import com.dbdata.repo.PersonRepo;

@RestController
public class SecurityRestApi {
    @Autowired
    SecurityService secService;

    @Autowired
    PersonRepo pRepo;

    @PostMapping("/register")
    public ResponseEntity<String> register(
            @RequestParam String uname,
            @RequestParam String pw) {
        User u = secService.register(uname, pw);
        if (u == null) {
            String e = "Username " + uname + " already exists!";
            return new ResponseEntity<>(e, HttpStatus.FORBIDDEN);
        }
        return new ResponseEntity<>(u.username, HttpStatus.OK);
    }

    @PostMapping("/login")
    public ResponseEntity<String> login(
            @RequestParam String uname,
            @RequestParam String pw) {
        String token = secService.login(uname, pw);

        if (token == null) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }

        return new ResponseEntity<>(token, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<String> deleteByName(
            @RequestParam(value = "uname") String uname,
            @RequestHeader("Authorization") String bearer) {

        if (bearer.startsWith("bearer")) {
            String token = bearer.split(" ")[1];
            String username = secService.validateJwt(token);
            if (username != null) {
                pRepo.deleteByUsername(uname);
                return new ResponseEntity<>(HttpStatus.OK);
            }
        }
        return new ResponseEntity<>(HttpStatus.FORBIDDEN);
    }

    @GetMapping("/private")
    public ResponseEntity<String> getPrivateData(@RequestHeader("Authorization") String bearer) {

        if (bearer.startsWith("Bearer")) {
            String token = bearer.split(" ")[1];
            String username = secService.validateJwt(token);
            if (username != null) {
                return new ResponseEntity<>("Private data for " + username, HttpStatus.OK);
            }
        }

        return new ResponseEntity<>(HttpStatus.FORBIDDEN);
    }

    @PostMapping("/loginbasic")
    public ResponseEntity<String> loginBasic(@RequestHeader("Authorization") String basicAuth) {

        String token = null;
        // "Basic uname:pw"
        if (basicAuth.startsWith("Basic")) {
            String credentials = basicAuth.split(" ")[1];
            String[] user = new String(Base64.getDecoder().decode(credentials)).split(":");
            token = secService.login(user[0], user[1]);
        }

        if (token == null) {
            return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
        }

        return new ResponseEntity<>(token, HttpStatus.OK);
    }
}