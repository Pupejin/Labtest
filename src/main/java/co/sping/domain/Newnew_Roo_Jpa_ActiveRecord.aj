// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.sping.domain;

import co.sping.domain.Newnew;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Newnew_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Newnew.entityManager;
    
    public static final List<String> Newnew.fieldNames4OrderClauseFilter = java.util.Arrays.asList("num");
    
    public static final EntityManager Newnew.entityManager() {
        EntityManager em = new Newnew().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Newnew.countNewnews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Newnew o", Long.class).getSingleResult();
    }
    
    public static List<Newnew> Newnew.findAllNewnews() {
        return entityManager().createQuery("SELECT o FROM Newnew o", Newnew.class).getResultList();
    }
    
    public static List<Newnew> Newnew.findAllNewnews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Newnew o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Newnew.class).getResultList();
    }
    
    public static Newnew Newnew.findNewnew(Long id) {
        if (id == null) return null;
        return entityManager().find(Newnew.class, id);
    }
    
    public static List<Newnew> Newnew.findNewnewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Newnew o", Newnew.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Newnew> Newnew.findNewnewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Newnew o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Newnew.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Newnew.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Newnew.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Newnew attached = Newnew.findNewnew(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Newnew.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Newnew.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Newnew Newnew.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Newnew merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
