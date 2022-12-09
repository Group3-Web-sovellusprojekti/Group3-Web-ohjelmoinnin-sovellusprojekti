package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.lawdome2;

@Repository
public interface LawDome2Repo extends JpaRepository<lawdome2, Integer> {

}
