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
 * Biencategoria generated by hbm2java
 */
@Entity
@Table(name="Biencategoria"
    ,catalog="Activos"
)
public class Biencategoria  implements java.io.Serializable {


     private Integer id;
     private Integer bien;
     private Integer categoria;

    public Biencategoria() {
    }

    public Biencategoria(Integer bien, Integer categoria) {
       this.bien = bien;
       this.categoria = categoria;
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
    @JoinColumn(name="bien", nullable=false)
    public Integer getBien() {
        return this.bien;
    }
    
    public void setBien(Integer bien) {
        this.bien = bien;
    }
    
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="categoria", nullable=false)
    public Integer getCategoria() {
        return this.categoria;
    }
    
    public void setCategoria(Integer categoria) {
        this.categoria = categoria;
    }




}


