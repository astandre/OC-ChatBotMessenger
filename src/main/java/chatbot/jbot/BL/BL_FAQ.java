package chatbot.jbot.BL;

import chatbot.jbot.DC.DC_FAQ;
import chatbot.jbot.Util;

import java.sql.Connection;


public class BL_FAQ {
    public static String[] getRespuesta(Connection cn, String pregunta) {
        String resp [] = DC_FAQ.getRespuesta(cn,Util.cleanDataPregunta(pregunta));
        if (resp != null) {
//            int id = DC_Inputs.getLastid(cn);
//            DC_Inputs.updateResp(cn,id);
            return resp;
        } else {
            return null;
        }
    }
}
