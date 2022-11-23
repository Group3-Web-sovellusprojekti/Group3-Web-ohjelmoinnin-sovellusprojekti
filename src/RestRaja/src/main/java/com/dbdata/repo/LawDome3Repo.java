package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.dbdata.data.lawdome3;

@Repository
public interface LawDome3Repo extends JpaRepository<lawdome3, Integer> {

}