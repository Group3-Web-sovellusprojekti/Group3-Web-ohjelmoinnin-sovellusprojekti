package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.antarticice;

@Repository
public interface AntarticIceRepo extends JpaRepository<antarticice, Integer> {

}
