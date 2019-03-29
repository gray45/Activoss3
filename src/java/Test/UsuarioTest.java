/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.UsuarioDao;
import activos.logic.Usuario;
import java.util.List;

/**
 *
 * @author grave
 */
public class UsuarioTest {
    
     static public void main(String[] args){
       
       //  insertar();
        // findAllUsuario();
         //editNombre(3);
    }
  /*  public static  void insertar(){
     for(int i=0; i<5; i++){
     Usuario usuario = new Usuario(3,"ana"  + i,"administrador","informatica" ,"gray");
     
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
    
    public static  void editNombre(int i){
    Usuario usuario = new Usuario(3,"greivin","administrador","informatica" ,"gray");
    usuario.setId(i);
    UsuarioDao bl = new UsuarioDao();
    bl.merge(usuario);
    }
    
    */
}
