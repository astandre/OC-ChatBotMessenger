package chatbot.jbot.BL;

import chatbot.jbot.DC.DC_Curso;
import chatbot.jbot.DC.DC_Sinonimo;

import java.sql.Connection;
import java.util.ArrayList;

public class BL_Curso {

    public static ArrayList<String> getCursos(Connection cn){
        return  DC_Curso.getCursos(cn);
    }

    public static String getCursoInfo(Connection cn, String nombre){
        int id = DC_Sinonimo.getIdCurso(cn,nombre);
        if (id!=0){
            return DC_Curso.getCursoInfo(cn,id);
        }
        return "0";
    }
}
