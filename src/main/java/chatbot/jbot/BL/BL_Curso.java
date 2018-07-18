package chatbot.jbot.BL;

import chatbot.jbot.DC.DC_Curso;
import chatbot.jbot.DC.DC_Sinonimo;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class BL_Curso {

    public static ArrayList<String> getCursos(Connection cn) {
        return DC_Curso.getCursos(cn);
    }

    public static String getCursoInfo(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        String resp = null;
        if (id != 0) {
            resp = DC_Curso.getCursoInfo(cn, id);
        }
        return resp;
    }

    public static String[] getCursoPrerequisito(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        String resp[];
        if (id != 0) {
            resp = DC_Curso.getCursoPreRequisitos(cn, id);
            return resp;
        } else {
            return null;
        }
    }

    public static String[] getCursoFechas(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        String result[];
        if (id != 0) {
            result = DC_Curso.getCursoFechas(cn, id);
            return result;
        } else {
            return null;
        }
    }

    public static Map<Integer, String[]> getCursoProfesor(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        Map<Integer, String[]> result ;
        if (id != 0) {
            result = DC_Curso.getCursoProfesor(cn, id);
            return result;
        } else {
            return null;
        }
    }

    public static String[] getCursoDuracion(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        String result[];
        if (id != 0) {
            result = DC_Curso.getCursoDuracion(cn, id);
            return result;
        } else {
            return new String[]{"0"};
        }
    }

    public static ArrayList<String> getCursoTemas(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        ArrayList<String> result = new ArrayList<>();
        if (id != 0) {
            result = DC_Curso.getCursoTemas(cn, id);
            ArrayList<String> newResult = new ArrayList<>();
            for (String tema: result){
                newResult.add(tema.replace(".",""));
            }
            return newResult;
        } else {
            return result;
        }
    }

    public static ArrayList<String> getCursoCompetencias(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        ArrayList<String> result = new ArrayList<>();
        if (id != 0) {
            result = DC_Curso.getCursoCompetencias(cn, id);
            return result;
        } else {
            return result;
        }
    }

    public static Map<Integer, String[]> getCursoRetos(Connection cn, String nombre) {
        int id = DC_Sinonimo.getIdCurso(cn, nombre);
        Map<Integer, String[]> result = new HashMap<>();
        if (id != 0) {
            result = DC_Curso.getCursoRetos(cn, id);
            return result;
        } else {
            return result;
        }
    }
}
