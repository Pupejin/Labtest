// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.sping.domain;

import co.sping.domain.Inform;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Inform_Roo_Jpa_Entity {
    
    declare @type: Inform: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Inform.id;
    
    @Version
    @Column(name = "version")
    private Integer Inform.version;
    
    public Long Inform.getId() {
        return this.id;
    }
    
    public void Inform.setId(Long id) {
        this.id = id;
    }
    
    public Integer Inform.getVersion() {
        return this.version;
    }
    
    public void Inform.setVersion(Integer version) {
        this.version = version;
    }
    
}
