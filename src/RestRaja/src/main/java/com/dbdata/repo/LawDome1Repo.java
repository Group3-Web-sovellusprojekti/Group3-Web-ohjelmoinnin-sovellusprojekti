package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.dbdata.data.lawdome1;

@Repository
public interface LawDome1Repo extends JpaRepository<lawdome1, Integer> {

}