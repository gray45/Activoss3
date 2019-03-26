package activos.logic;
// Generated 22/03/2019 02:27:00 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;




/**
 * Usuario generated by hbm2java
 */
@Entity
@Table(name="Usuario"
    ,catalog="Activos"
)
public class Usuario  implements java.io.Serializable {


     private Integer id;
     private Integer dependencia;
     private String nombre;
     private String rol;
     private String dependecia;
     private String password;

    public Usuario() {
    }

    public Usuario(Integer dependencia, String nombre, String rol, String dependecia, String password) {
       this.dependencia = dependencia;
       this.nombre = nombre;
       this.rol = rol;
       this.dependecia = dependecia;
       this.password = password;
    }
   @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="dependencia", nullable=false)
    public Integer getDependencia() {
        return this.dependencia;
    }
    
    public void setDependencia(Integer dependencia) {
        this.dependencia = dependencia;
    }
    
    @Column(name="nombre", nullable=false)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Column(name="rol", nullable=false)
    public String getRol() {
        return this.rol;
    }
    
    public void setRol(String rol) {
        this.rol = rol;
    }
    
    @Column(name="dependencia", nullable=false)
    public String getDependecia() {
        return this.dependecia;
    }
    
    public void setDependecia(String dependecia) {
        this.dependecia = dependecia;
    }
    
    @Column(name="password", nullable=false)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }




}

