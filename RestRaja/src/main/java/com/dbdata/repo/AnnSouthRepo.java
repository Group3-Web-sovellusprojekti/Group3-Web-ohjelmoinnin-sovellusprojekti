package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.dbdata.data.annsouth;

@Repository
public interface AnnSouthRepo extends JpaRepository<annsouth, String> {

}
