package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.User;

@Repository
public interface PersonRepo extends JpaRepository<User, String> {

}