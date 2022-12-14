package com.dbdata.repo;

//import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.User;

@Repository
public interface PersonRepo extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User deleteByUsername(String username);
}
