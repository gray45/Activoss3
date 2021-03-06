package activos.logic;
// Generated 29/03/2019 11:31:28 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Dependencia generated by hbm2java
 */
public class Dependencia  implements java.io.Serializable {


     private Integer id;
     private String descripcion;
     private Set funcionarios = new HashSet(0);
     private Set usuarios = new HashSet(0);
     private Set solicituds = new HashSet(0);

    public Dependencia() {
    }

	
    public Dependencia(String descripcion) {
        this.descripcion = descripcion;
    }
    public Dependencia(String descripcion, Set funcionarios, Set usuarios, Set solicituds) {
       this.descripcion = descripcion;
       this.funcionarios = funcionarios;
       this.usuarios = usuarios;
       this.solicituds = solicituds;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public Set getFuncionarios() {
        return this.funcionarios;
    }
    
    public void setFuncionarios(Set funcionarios) {
        this.funcionarios = funcionarios;
    }
    public Set getUsuarios() {
        return this.usuarios;
    }
    
    public void setUsuarios(Set usuarios) {
        this.usuarios = usuarios;
    }
    public Set getSolicituds() {
        return this.solicituds;
    }
    
    public void setSolicituds(Set solicituds) {
        this.solicituds = solicituds;
    }




}


