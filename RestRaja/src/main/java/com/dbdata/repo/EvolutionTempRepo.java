package com.dbdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.dbdata.data.evolutiontemp;

@Repository
public interface EvolutionTempRepo extends JpaRepository<evolutiontemp, Integer> {

}
