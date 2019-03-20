/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.UsuarioDao;
import activos.logic.Dependencia;
import activos.logic.Usuario;
import java.util.List;

/**
 *
 * @author grave
 */
public class UsuarioTest {
    
     static public void main(String[] args){
       
        // insertar();
         findAllUsuario();
    }
    public static  void insertar(){
     for(int i=0; i<5; i++){
         Dependencia dependecia = new Dependencia("informatica");
         dependecia.setId(1);
     Usuario usuario = new Usuario(dependecia,"greivin"  + i,"administrador","informatica" ,"gray");
     
     UsuarioDao usuariodao = new UsuarioDao();
            usuariodao.save(usuario);
     }
         }
    
    public static void findAllUsuario() {
        List<Usuario> usuarios;
        UsuarioDao bl = new UsuarioDao();
        usuarios = bl.findAll();
        // usuarios = bl.findAll();
        usuarios.forEach((aux) -> {
            System.out.println(aux.getNombre());
        });
    }
}
