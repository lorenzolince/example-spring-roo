// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.llh.domain;

import com.llh.domain.Visitas;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Visitas_Roo_Jpa_Entity {
    
    declare @type: Visitas: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Visitas.id;
    
    @Version
    @Column(name = "version")
    private Integer Visitas.version;
    
    public Long Visitas.getId() {
        return this.id;
    }
    
    public void Visitas.setId(Long id) {
        this.id = id;
    }
    
    public Integer Visitas.getVersion() {
        return this.version;
    }
    
    public void Visitas.setVersion(Integer version) {
        this.version = version;
    }
    
}
