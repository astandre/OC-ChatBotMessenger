package chatbot.jbot.DC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


public class DC_Curso {



    public static ArrayList<String> getCursos(Connection connection) {
        String query = "select nombre from curso";
        ArrayList<String> cursos = new ArrayList<>();
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                cursos.add(rs.getString("nombre"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cursos;
    }

    public static String getCursoInfo(Connection cn, int id) {
        String query = "SELECT descripcion,nombre,link FROM curso WHERE id_curso = " + String.valueOf(id);
        String resp = null;
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                resp = rs.getString("descripcion");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    public static String[] getCursoPreRequisitos(Connection cn, int id) {
        String query = "SELECT pre_requisito,nombre FROM curso WHERE id_curso =" + String.valueOf(id) + " and archivado = 0";
        String result[] = new String[2];
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                result[0] = rs.getString("nombre");
                result[1] = rs.getString("pre_requisito");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static String[] getCursoFechas(Connection cn, int id) {
        String query = "SELECT fecha_inscripcion, fecha_inicio,nombre FROM curso WHERE id_curso = " + String.valueOf(id);
        String result[] = new String[3];
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                result[0] = rs.getString("nombre");
                result[1] = rs.getString("fecha_inscripcion");
                result[2] = rs.getString("fecha_inicio");
            }
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
    }

    public static Map<Integer, String[]> getCursoProfesor(Connection cn, int id) {
        String query = "SELECT nombre, email, twitter fROM docente INNER JOIN docente_curso curso ON docente.id_docente = curso.id_docente_curso WHERE  id_curso = " + String.valueOf(id);
        Map<Integer, String[]> result = new HashMap<>();
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            int i = 0;
            while (rs.next()) {
                result.put(i, new String[]{rs.getString("nombre"), rs.getString("email"), rs.getString("twitter")});
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static String[] getCursoDuracion(Connection cn, int id) {
        String query = "SELECT nombre, esfuerzo_est,duracion FROM curso WHERE id_curso = " + String.valueOf(id);
        String result[] = new String[3];
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                result[0] = rs.getString("nombre");
                result[1] = rs.getString("esfuerzo_est");
                result[2] = rs.getString("duracion");
            }
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return result;
        }
    }

    public static ArrayList<String> getCursoTemas(Connection cn, int id) {
        String query = "SELECT c.nombre, contenido FROM contenido INNER JOIN curso c ON contenido.id_curso_cont = " +
                "c.id_curso  where id_curso = " + String.valueOf(id);
        ArrayList<String> result = new ArrayList<>();
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            int i = 0;
            while (rs.next()) {
                if (i == 0) {
                    result.add(rs.getString("nombre"));
                } else {
                    result.add(rs.getString("contenido"));
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static ArrayList<String> getCursoCompetencias(Connection cn, int id) {
        String query = "select c.nombre, competencia from competencias inner join curso c on competencias.id_curso_comp" +
                " = c.id_curso  where id_curso = " + String.valueOf(id);
        ArrayList<String> result = new ArrayList<>();
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            int i = 0;
            while (rs.next()) {
                if (i == 0) {
                    result.add(rs.getString("nombre"));
                } else {
                    result.add(rs.getString("competencia"));
                }
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public static Map<Integer, String[]> getCursoRetos(Connection cn, int id) {
        String query = "select c.nombre, reto.descripcion, fecha_entrega from reto inner join curso c on " +
                "reto.id_curso_reto = c.id_curso  where id_curso =" + String.valueOf(id);
        Map<Integer, String[]> result = new HashMap<>();
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            int i = 0;
            while (rs.next()) {
                result.put(i, new String[]{rs.getString("nombre"), rs.getString("descripcion"), rs.getString("fecha_entrega")});
                i++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
