/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import Dao.FuncionarioDao;
import activos.logic.Funcionario;
import java.util.List;

/**
 *
 * @author grave
 */
public class FuncionarioTest {

    static public void main(String[] args) {

        insertar();
        //findAllFuncionario();
        //  editNombre(3);
    }

    public static void insertar() {
           

//    public Funcionario(Integer dependencia, String cedula, String dependencia_1) {

        Funcionario usuario = new Funcionario(1, "207640246", "informatica");

        FuncionarioDao usuariodao = new FuncionarioDao();
        usuariodao.save(usuario);

    }

    public static void findAllFuncionario() {
        List<Funcionario> usuarios;
        FuncionarioDao bl = new FuncionarioDao();
        usuarios = bl.findAll();
        // usuarios = bl.findAll();
        usuarios.forEach((aux) -> {
            System.out.println(aux.getCedula());
        });

    }

    public static void editNombre(int i) {
        Funcionario usuario = new Funcionario(3, "37637647", "fisica");
        usuario.setIdFuncionario(i);
        FuncionarioDao bl = new FuncionarioDao();
        bl.merge(usuario);
    }

}
