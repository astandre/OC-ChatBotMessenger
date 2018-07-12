package chatbot.jbot.DC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


public class DC_Curso{

//    public void connectDatabase() {
//        try {
//            // We register the MySQL (MariaDB) driver
//            // Registramos el driver de MySQL (MariaDB)
////            try {
////                Class.forName("com.mariadb.jdbc.Driver");
////
////            } catch (ClassNotFoundException ex) {
////                System.out.println("Error al registrar el driver de MySQL: " + ex);
////            }
//            Connection connection = null;
//            // Database connect
//            // Conectamos con la base de datos
//            connection = DriverManager.getConnection(
//                    "jdbc:mysql://localhost/ocdb",
//                    "root", "");
//            boolean valid = connection.isValid(50000);
//            System.out.println(valid ? "TEST OK" : "TEST FAIL");
//
//        } catch (java.sql.SQLException sqle) {
//            System.out.println("Error: " + sqle);
//        }
//    }

    public static ArrayList<String> getCursos(Connection connection){
        String query = "select nombre from curso";
        ArrayList<String> cursos = new ArrayList<>();
        try
        {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()){
                cursos.add(rs.getString("nombre"));

            }
//            connection.close();
//            System.out.println("Disconnected from database");

        } catch (Exception e){
            e.printStackTrace();
        }
        return cursos;
    }
    public static String getCursoInfo(Connection cn, int id){
        String query = "SELECT descripcion,nombre,link FROM curso WHERE id_curso = " + String.valueOf(id);
        try
        {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                return rs.getString("descripcion");
            }
                return "0";
        } catch (Exception e){
            e.printStackTrace();
            return "0";
        }

    }
}
