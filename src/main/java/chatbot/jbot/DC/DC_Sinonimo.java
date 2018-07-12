package chatbot.jbot.DC;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DC_Sinonimo {
    public static int getIdCurso(Connection connection, String name) {
        String query = "SELECT id_curso_sin FROM sinonimos inner join curso c on sinonimos.id_curso_sin = c.id_curso " +
                "WHERE sinonimo LIKE '%" + name + "%'  and c.archivado = 0";
        try {
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            if (rs.next()) {
                return rs.getInt("id_curso_sin");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
//TODO clean data
}
