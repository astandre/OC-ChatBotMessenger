package chatbot.jbot.DC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DC_FAQ {

    public static String [] getRespuesta(Connection cn, String pregunta) {
        String query = "select r.link,r.respuesta  from preguntas p inner join respuesta r on " +
                "r.id_resp_intent = p.id_preg_intent where UPPER(p.pregunta) like '%" + pregunta + "%'";
        String resp [] = new String [2];
        try {
            Statement stmt = cn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                resp[0] = rs.getString("respuesta");
                resp[1] = rs.getString("link");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
}
