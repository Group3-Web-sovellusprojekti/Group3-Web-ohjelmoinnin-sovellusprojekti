package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.TestTable;

@Repository
public interface Datarepository extends JpaRepository<TestTable, Integer> {

}
