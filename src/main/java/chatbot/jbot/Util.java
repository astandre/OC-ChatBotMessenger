package chatbot.jbot;

import me.ramswaroop.jbot.core.facebook.models.Button;
import org.apache.commons.lang3.StringUtils;

import java.util.ArrayList;

public class Util {

    public static Button[] displayCursoOptions(ArrayList<String> cursos, int plus, String base, String cont) {
        Button[] quickReplies = new Button[9];
        for (int i = 0; i < quickReplies.length - 1; i++) {
            quickReplies[i] = new Button().setContentType("text").setTitle(cursos.get(i + plus)).setPayload(
                    base + " " + cursos.get(i + plus));
        }
        quickReplies[8] = new Button().setContentType("text").setTitle("Mas cursos").setPayload(base + cont);
        return quickReplies;
    }

    public static String cleanData(String data) {
        String articles[] = {"EL", "Y", "LA", "LOS", "TU", "LAS", "DE", "PARA", "ELLOS", "DE", "DEL", "UNA", "A", "TU"};
        char special[] = {'¿', '?', '!', '¡', '(', ')', ',','%','&','$', '.', ';', ':', '_', '{', '}', '[', ']', '+', '/', '*', '<', '>'};
        String cleanData = "";
        data = StringUtils.stripAccents(data);
        data = data.toUpperCase();

        for (int i = 0; i < data.length(); i++) {
            Boolean clean = true;
            for (int j = 0; j < special.length; j++) {
                if (data.charAt(i) == special[j]) {
                    clean = false;
                    break;
                }
            }
            if (clean){
                System.out.println(cleanData);
            }
        }
        String finalData = "";
        String words[] = cleanData.split(" ");
        for (String word : words) {
            Boolean clean = true;
            for (String article : articles) {
                if (word.equals(article)) {
                    clean = false;
                    break;
                }
            }
            if (clean) {
                finalData = finalData + " " + word;
            }
        }
        return finalData;
    }
}