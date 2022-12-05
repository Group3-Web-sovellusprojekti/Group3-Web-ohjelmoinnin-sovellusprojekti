package com.dbdata.service;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.dbdata.data.TestTable;
import com.dbdata.data.annglobal;
import com.dbdata.data.annnorth;
import com.dbdata.data.annsouth;
import com.dbdata.data.antarticice;
import com.dbdata.data.coemisscountry;
import com.dbdata.data.coemissmtc;
import com.dbdata.data.emisssector;
import com.dbdata.data.evolutionco;
import com.dbdata.data.evolutiontemp;
import com.dbdata.data.humanevo;
import com.dbdata.data.lawdome1;
import com.dbdata.data.lawdome2;
import com.dbdata.data.lawdome3;
import com.dbdata.data.maunaloa;
import com.dbdata.data.monglobal;
import com.dbdata.data.monnorth;
import com.dbdata.data.monsouth;
import com.dbdata.data.northernreconstruction;
import com.dbdata.data.vostok;
import com.dbdata.repo.Datarepository;
import com.dbdata.repo.EmissSectorRepo;
import com.dbdata.repo.EvolutionCoRepo;
import com.dbdata.repo.EvolutionTempRepo;
import com.dbdata.repo.HumanEvoRepo;
import com.dbdata.repo.LawDome1Repo;
import com.dbdata.repo.LawDome2Repo;
import com.dbdata.repo.LawDome3Repo;
import com.dbdata.repo.MaunaLoaRepo;
import com.dbdata.repo.AnnGlobalRepo;
import com.dbdata.repo.AnnNorthRepo;
import com.dbdata.repo.AnnSouthRepo;
import com.dbdata.repo.AntarticIceRepo;
import com.dbdata.repo.CoEmissMtcRepo;
import com.dbdata.repo.CoEmissionCountryRepo;
import com.dbdata.repo.MonGlobalRepo;
import com.dbdata.repo.MonNorthRepo;
import com.dbdata.repo.MonSouthRepo;
import com.dbdata.repo.NorthernReconstRepo;
import com.dbdata.repo.VostokRepo;

//import java.util.ArrayList;
import java.util.List;

@Service
public class Dataservice {

    @Autowired
    Datarepository repo;

    @Autowired
    AnnGlobalRepo AnnGlobalRepo;
    AnnNorthRepo AnnNorthRepo;
    AnnSouthRepo AnnSouthRepo;
    MonGlobalRepo MonGlobalRepo;
    MonNorthRepo MonNorhtRepo;
    MonSouthRepo MonSouthRepo;
    AntarticIceRepo antarticIceRepo;
    CoEmissionCountryRepo coEmissionCountryRepo;
    CoEmissMtcRepo coEmissMtcRepo;
    EmissSectorRepo emissSectorRepo;
    EvolutionCoRepo evolutionCoRepo;
    EvolutionTempRepo evolutionTempRepo;
    HumanEvoRepo humanEvoRepo;
    LawDome1Repo lawDome1Repo;
    LawDome2Repo lawDome2Repo;
    LawDome3Repo lawDome3Repo;
    MaunaLoaRepo maunaLoaRepo;
    NorthernReconstRepo northernReconstRepo;
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
