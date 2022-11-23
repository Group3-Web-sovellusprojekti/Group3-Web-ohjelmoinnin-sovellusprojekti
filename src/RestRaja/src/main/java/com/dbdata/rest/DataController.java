package com.dbdata.rest;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.ResponseEntity;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestHeader;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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

import com.dbdata.service.Dataservice;

import java.util.List;

//import antlr.collections.List;

@RestController
public class DataController {
    @Autowired
    private Dataservice dataservice;

    @GetMapping("testtable")
    public List<TestTable> getTable() {
        return dataservice.getTable();
    }

    @GetMapping("annglobal")
    public List<annglobal> getAnnGlobal() {
        return dataservice.getAnnGlobal();
    }

    @GetMapping("annnorth")
    public List<annnorth> getAnnNorth() {
        return dataservice.getAnnNorth();
    }

    @GetMapping("annsouth")
    public List<annsouth> getAnnSouth() {
        return dataservice.getAnnSouth();
    }

    @GetMapping("monglobal")
    public List<monglobal> getMonGlobal() {
        return dataservice.getMonGlobal();
    }

    @GetMapping("monnorth")
    public List<monnorth> getMonNorth() {
        return dataservice.getMonNorth();
    }

    @GetMapping("monsouth")
    public List<monsouth> getMonSouth() {
        return dataservice.getMonSouth();
    }

    @GetMapping("antarticice")
    public List<antarticice> getAntarticice() {
        return dataservice.getAntarticice();
    }

    @GetMapping("coemisscountry")
    public List<coemisscountry> getCoemisscountry() {
        return dataservice.getCoemisscountry();
    }

    @GetMapping("coemissmtc")
    public List<coemissmtc> getCoemissmtc() {
        return dataservice.getCoemissmtc();
    }

    @GetMapping("emisssector")
    public List<emisssector> getEmisssector() {
        return dataservice.getEmisssector();
    }

    @GetMapping("evolutionco")
    public List<evolutionco> getEvolutionco() {
        return dataservice.getEvolutionco();
    }

    @GetMapping("evolutiontemp")
    public List<evolutiontemp> getEvolutiontemp() {
        return dataservice.getEvolutiontemp();
    }

    @GetMapping("humanevo")
    public List<humanevo> getHumanevo() {
        return dataservice.getHumanevo();
    }

    @GetMapping("lawdome1")
    public List<lawdome1> getLawdome1() {
        return dataservice.getLawdome1();
    }

    @GetMapping("lawdome2")
    public List<lawdome2> getLawdome2() {
        return dataservice.getLawdome2();
    }

    @GetMapping("lawdome3")
    public List<lawdome3> getLawdome3() {
        return dataservice.getLawdome3();
    }

    @GetMapping("maunaloa")
    public List<maunaloa> getMaunaloa() {
        return dataservice.getMaunaloa();
    }

    @GetMapping("northernreconstruction")
    public List<northernreconstruction> getNortherreconst() {
        return dataservice.getNorthernreconst();
    }

    @GetMapping("vostok")
    public List<vostok> getVostok() {
        return dataservice.getVostok();
    }
}
