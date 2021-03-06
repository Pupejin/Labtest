// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.sping.domain;

import co.sping.domain.ITT;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ITT_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ITT.entityManager;
    
    public static final List<String> ITT.fieldNames4OrderClauseFilter = java.util.Arrays.asList("dayly");
    
    public static final EntityManager ITT.entityManager() {
        EntityManager em = new ITT().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ITT.countITTS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ITT o", Long.class).getSingleResult();
    }
    
    public static List<ITT> ITT.findAllITTS() {
        return entityManager().createQuery("SELECT o FROM ITT o", ITT.class).getResultList();
    }
    
    public static List<ITT> ITT.findAllITTS(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ITT o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ITT.class).getResultList();
    }
    
    public static ITT ITT.findITT(Long id) {
        if (id == null) return null;
        return entityManager().find(ITT.class, id);
    }
    
    public static List<ITT> ITT.findITTEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ITT o", ITT.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ITT> ITT.findITTEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ITT o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ITT.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ITT.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ITT.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ITT attached = ITT.findITT(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ITT.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ITT.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ITT ITT.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ITT merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
