package com.dbdata.service;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dbdata.data.*;
import com.dbdata.repo.*;

//import java.util.ArrayList;
import java.util.List;

@Service
public class Dataservice {

    @Autowired
    Datarepository repo;
    AnnGlobalRepo AnnGlobalRepo;
    @Autowired
    AnnNorthRepo AnnNorthRepo;
    @Autowired
    AnnSouthRepo AnnSouthRepo;
    @Autowired
    MonGlobalRepo MonGlobalRepo;
    @Autowired
    MonNorthRepo MonNorhtRepo;
    @Autowired
    MonSouthRepo MonSouthRepo;
    @Autowired
    AntarticIceRepo antarticIceRepo;
    @Autowired
    CoEmissionCountryRepo coEmissionCountryRepo;
    @Autowired
    CoEmissMtcRepo coEmissMtcRepo;
    @Autowired
    EmissSectorRepo emissSectorRepo;
    @Autowired
    EvolutionCoRepo evolutionCoRepo;
    @Autowired
    EvolutionTempRepo evolutionTempRepo;
    @Autowired
    HumanEvoRepo humanEvoRepo;
    @Autowired
    LawDome1Repo lawDome1Repo;
    @Autowired
    LawDome2Repo lawDome2Repo;
    @Autowired
    LawDome3Repo lawDome3Repo;
    @Autowired
    MaunaLoaRepo maunaLoaRepo;
    @Autowired
    NorthernReconstRepo northernReconstRepo;
    @Autowired
    VostokRepo vostokRepo;

    public List<TestTable> getTable() {
        return repo.findAll();
    }

    public List<annglobal> getAnnGlobal() {
        return AnnGlobalRepo.findAll();
    }

    public List<annnorth> getAnnNorth() {
        return AnnNorthRepo.findAll();
    }

    public List<annsouth> getAnnSouth() {
        return AnnSouthRepo.findAll();
    }

    public List<monglobal> getMonGlobal() {
        return MonGlobalRepo.findAll();
    }

    public List<monnorth> getMonNorth() {
        return MonNorhtRepo.findAll();
    }

    public List<monsouth> getMonSouth() {
        return MonSouthRepo.findAll();
    }

    public List<antarticice> getAntarticice() {
        return antarticIceRepo.findAll();
    }

    public List<coemisscountry> getCoemisscountry() {
        return coEmissionCountryRepo.findAll();
    }

    public List<coemissmtc> getCoemissmtc() {
        return coEmissMtcRepo.findAll();
    }

    public List<emisssector> getEmisssector() {
        return emissSectorRepo.findAll();
    }

    public List<evolutionco> getEvolutionco() {
        return evolutionCoRepo.findAll();
    }

    public List<evolutiontemp> getEvolutiontemp() {
        return evolutionTempRepo.findAll();
    }

    public List<humanevo> getHumanevo() {
        return humanEvoRepo.findAll();
    }

    public List<lawdome1> getLawdome1() {
        return lawDome1Repo.findAll();
    }

    public List<lawdome2> getLawdome2() {
        return lawDome2Repo.findAll();
    }

    public List<lawdome3> getLawdome3() {
        return lawDome3Repo.findAll();
    }

    public List<maunaloa> getMaunaloa() {
        return maunaLoaRepo.findAll();
    }

    public List<northernreconstruction> getNorthernreconst() {
        return northernReconstRepo.findAll();
    }

    public List<vostok> getVostok() {
        return vostokRepo.findAll();
    }
}
