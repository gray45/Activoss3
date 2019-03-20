/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.DependenciaDao;
import activos.logic.Dependencia;

/**
 *
 * @author grave
 */
public class DependenciaTest {
    static public void main(String[] args){
       
         insertar();
    }
    public static  void insertar(){
     for(int i=0; i<5; i++){
     Dependencia depedencia = new Dependencia("informatica");
     DependenciaDao dependenciadao = new DependenciaDao();
            dependenciadao.save(depedencia);
     }
         }
}
