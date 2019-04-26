/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.DependenciaDao;
import activos.logic.Dependencia;
import java.util.List;

/**
 *
 * @author grave
 */
public class DependenciaTest {
    static public void main(String[] args) {

        insertar();
        //  findAllUsuario();
        //editNombre(3);
    }

    public static void insertar() {
      
            Dependencia depedencia = new Dependencia("informatica");
            DependenciaDao dependenciadao = new DependenciaDao();
            dependenciadao.save(depedencia);   
    }
    
    public static void findAllUsuario() {
        List<Dependencia> usuarios;
        DependenciaDao bl = new DependenciaDao();
        usuarios = bl.findAll();
        // usuarios = bl.findAll();
        usuarios.forEach((aux) -> {
            System.out.println(aux.getDescripcion());
        });
    }

    public static void editNombre(int i) {
        Dependencia dependencia = new Dependencia("fisica");
        dependencia.setId(i);
        DependenciaDao bl = new DependenciaDao();
        bl.merge(dependencia);
    }
}
