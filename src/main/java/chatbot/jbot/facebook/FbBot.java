package chatbot.jbot.facebook;


import chatbot.jbot.BL.BL_Curso;
import chatbot.jbot.BL.BL_FAQ;
import chatbot.jbot.BL.BL_Inputs;
import chatbot.jbot.JBotApplication;
import chatbot.jbot.Util;
import me.ramswaroop.jbot.core.common.Controller;
import me.ramswaroop.jbot.core.common.EventType;
import me.ramswaroop.jbot.core.common.JBot;
import me.ramswaroop.jbot.core.facebook.Bot;
import me.ramswaroop.jbot.core.facebook.models.Attachment;
import me.ramswaroop.jbot.core.facebook.models.Button;
import me.ramswaroop.jbot.core.facebook.models.Event;
import me.ramswaroop.jbot.core.facebook.models.Message;
import me.ramswaroop.jbot.core.facebook.models.Payload;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;

import javax.annotation.PostConstruct;


import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

/**
 * Chatbot diseñado para resolver dudas acerca de la plataforma
 * Open Cmpus y sus diferentes cursos
 *
 * @author Andre Herrera
 * @version 06/07/2018
 */
@JBot
@Profile("facebook")
public class FbBot extends Bot {

    /**
     * Set this property in {@code application.properties}.
     */
    @Value("${fbBotToken}")
    private String fbToken;

    /**
     * Set this property in {@code application.properties}.
     */
    @Value("${fbPageAccessToken}")
    private String pageAccessToken;

    @Override
    public String getFbToken() {
        return fbToken;
    }

    @Override
    public String getPageAccessToken() {
        return pageAccessToken;
    }



    /**
     * Sets the "Get Started" button with a payload "hi". It also set the "Greeting Text" which the user sees when it
     * opens up the chat window. Uncomment the {@code @PostConstruct} annotation only after you have verified your
     * webhook.
     */
    @PostConstruct
//    @Controller(next = "showMenu")
    public void init() {
        setGetStartedButton("showMenu");
        setGreetingText(new Payload[]{new Payload().setLocale("default").setText("OC-Chatbot para resolver dudas de Open" +
                " Campus y sus diferentes cursos. Ingresa menu para ver lo que puedo hacer")});
    }

    /*
    Desplegar menu
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY, EventType.POSTBACK}, pattern = "^(menu|Menu)$")
    public void showMenu(Event event) {
        reply(event, new Message().setText("Comandos disponibles:").setQuickReplies(Util.displayComandos()));
    }

    /*
    Muestra los cursos disponibles
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(cursos|Cursos)$")
    public void showAllCursos(Event event) {
//        TODO display as buttons.
        reply(event, "Los cursos disponibles son:");
        ArrayList<String> cursos = BL_Curso.getCursos(JBotApplication.getConnection());
        String response = "";
        for (String curso : cursos) {
            response = response + curso + "\n";
        }
//        Button[] buttons = new Button[3];
//        for (int i = 0; i<=3;i++ ) {
//            buttons[i] = new Button().setType("web_url").setUrl("https://github.com/astandre").setTitle(cursos.get(i));
//            i++;
//        }
//        reply(event, new Message().setAttachment(new Attachment().setType("template").setPayload(new Payload()
//                .setTemplateType("button").setText("Cursos disponibles").setButtons(buttons))));
        reply(event, response);
    }
//TODO hacer que una respondido a un comando me redireccione al menu

    /**
     * Comando informacion
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(info|Info)")
    public void info(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 4) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "info", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(5, message.length());
                String resp = BL_Curso.getCursoInfo(cn, Util.cleanData(curso));
                if (resp != null) {
                    reply(event, new Message().setText(resp));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("info")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "info", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("info1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "info", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("info2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "info", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 5) {
                String curso = message.substring(5, message.length());
                String resp = BL_Curso.getCursoInfo(cn, Util.cleanData(curso));
                if (resp != null) {
                    reply(event, new Message().setText(resp));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando prerequisitos
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(prerequisitos|Prerequisitos)")
    public void prerequisitos(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 13) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "prerequisitos", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(4, message.length());
                String resp[] = BL_Curso.getCursoPrerequisito(cn, Util.cleanData(curso));
                if (resp != null) {
                    if (resp[0].equals("Ninguno")) {
                        String full_response = "No es necesario ningun PREREQUISITO para el curso ";
                        reply(event, new Message().setText(full_response));
                    } else {
                        String full_response = "Los PREREQUISITOS para el curso " + resp[0] + " son: " + resp[
                                1];
                        reply(event, new Message().setText(full_response));
                    }
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("prerequisitos")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "prerequisitos", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("prerequisitos1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "prerequisitos", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("prerequisitos2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "prerequisitos", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 14) {
                String curso = message.substring(14, message.length());
                String resp[] = BL_Curso.getCursoPrerequisito(cn, Util.cleanData(curso));
                if (resp != null) {
                    if (resp[0].equals("Ninguno")) {
                        String full_response = "No es necesario ningun *PREREQUISITO* para el curso ";
                        reply(event, new Message().setText(full_response));
                    } else {
                        String full_response = "Los PREREQUISITOS para el curso " + resp[0] + " son: " + resp[
                                1];
                        reply(event, new Message().setText(full_response));
                    }
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando Fechas
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(fechas|Fechas)")
    public void fechas(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 6) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "fechas", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(7, message.length());
                String resp[] = BL_Curso.getCursoFechas(cn, Util.cleanData(curso));
                if (resp != null) {
                    Date fecha_inicio = null, fecha_fin = null;
                    try {
                        fecha_inicio = new SimpleDateFormat("dd-MM-yyyy").parse(resp[1]);
                        fecha_fin = new SimpleDateFormat("dd-MM-yyyy").parse(resp[2]);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    String full_response = "La inscripcion al curso " + resp[0] + " comienza el dia " +
                            new SimpleDateFormat("dd-MM-YYYY").format(fecha_inicio)
                            + " y el inicio de actividades es el dia " +
                            new SimpleDateFormat("dd-MM-YYYY").format(fecha_fin);
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("fechas")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "fechas", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("fechas1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "fechas", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("fechas2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "fechas", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 7) {
                String curso = message.substring(7, message.length());
                String resp[] = BL_Curso.getCursoFechas(cn, Util.cleanData(curso));
                if (resp != null) {
                    Date fecha_inicio = null, fecha_fin = null;
                    try {
                        fecha_inicio = new SimpleDateFormat("dd-MM-yyyy").parse(resp[1]);
                        fecha_fin = new SimpleDateFormat("dd-MM-yyyy").parse(resp[2]);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    String full_response = "La inscripcion al curso " + resp[0] + " comienza el dia " +
                            new SimpleDateFormat("dd-MM-YYYY").format(fecha_inicio)
                            + " y el inicio de actividades es el dia " +
                            new SimpleDateFormat("dd-MM-YYYY").format(fecha_fin);
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando inscripcion
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(inscripcion|Inscripcion)")
    public void inscripcion(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 11) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "inscripcion", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(12, message.length());
                String resp[] = BL_Curso.getCursoDuracion(cn, Util.cleanData(curso));
                if (resp != null) {
                    String full_response = "Puedes inscribirte al curso " + resp[0] + " en el siguiente enlace: " +
                            resp[1];
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("inscripcion")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "inscripcion", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("inscripcion1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "inscripcion", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("inscripcion2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "inscripcion", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 12) {
                String curso = message.substring(12, message.length());
                String resp[] = BL_Curso.getCursoLink(cn, Util.cleanData(curso));
                if (resp != null) {
                    String full_response = "Puedes inscribirte al curso " + resp[0] + " en el siguiente enlace: " +
                    resp[1];
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando duracion
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(duracion|Duracion)")
    public void duracion(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 8) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "duracion", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(9, message.length());
                String resp[] = BL_Curso.getCursoDuracion(cn, Util.cleanData(curso));
                if (resp != null) {
                    String full_response = "El curso " + resp[0] + " tiene una DURACION de " + resp[1] +
                            " semanas, con un esfuerzo estimado de " + resp[2] + " horas por semana";
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("duracion")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "duracion", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("duracion1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "duracion", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("duracion2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "duracion", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 9) {
                String curso = message.substring(9, message.length());
                String resp[] = BL_Curso.getCursoDuracion(cn, Util.cleanData(curso));
                if (resp != null) {
                    String full_response = "El curso " + resp[0] + " tiene una DURACION de " + resp[1] +
                            " semanas, con un esfuerzo estimado de " + resp[2] + " horas por semana";
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando docentes
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(docentes|Docentes)")
    public void docentes(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 8) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "docentes", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(9, message.length());
                Map<Integer, String[]> resp = BL_Curso.getCursoProfesor(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    if (resp.size() >= 2) {
                        full_response = "Los docentes encargados son ";
                        for (Map.Entry<Integer, String[]> entry : resp.entrySet()) {
                            if (entry.getValue()[2].length() > 0) {
                                full_response = full_response + entry.getValue()[0] + " (" + entry.getValue()[1] + ") " + entry.getValue()[2] + " ";
                            } else {
                                full_response = full_response + entry.getValue()[0] + " (" + entry.getValue()[1] + ") ";
                            }
                        }
                    } else {
                        if (resp.get(0)[2].length() > 0) {
                            full_response = "El docente encargado es " + resp.get(0)[0] + " (" + resp.get(0)[1] + ") ";
                        } else {
                            full_response = "El docente encargado es " + resp.get(0)[0] + " (" + resp.get(0)[1] + ") " + resp.get(0)[2];
                        }
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("docentes")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "docentes", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("docentes1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "docentes", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("docentes2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "docentes", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 9) {
                String curso = message.substring(9, message.length());
                Map<Integer, String[]> resp = BL_Curso.getCursoProfesor(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    if (resp.size() >= 2) {
                        full_response = "Los docentes encargados son ";
                        for (Map.Entry<Integer, String[]> entry : resp.entrySet()) {
                            if (entry.getValue()[2].length() > 0) {
                                full_response = full_response + entry.getValue()[0] + " (" + entry.getValue()[1] + ") " + entry.getValue()[2] + " ";
                            } else {
                                full_response = full_response + entry.getValue()[0] + " (" + entry.getValue()[1] + ") ";
                            }
                        }
                    } else {
                        if (resp.get(0)[2].length() > 0) {
                            full_response = "El docente encargado es " + resp.get(0)[0] + " (" + resp.get(0)[1] + ") ";
                        } else {
                            full_response = "El docente encargado es " + resp.get(0)[0] + " (" + resp.get(0)[1] + ") " + resp.get(0)[2];
                        }
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando temas
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(temas|Temas)")
    public void temas(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 5) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "temas", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(6, message.length());
                ArrayList<String> resp = BL_Curso.getCursoTemas(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    int i = 0;
                    full_response = "Los contenidos del curso " + resp.get(0) + " son: ";
                    for (String tema : resp) {
                        if (i >= 1) {
                            if (i + 1 == resp.size()) {
                                full_response = full_response + tema;
                            } else {
                                full_response = full_response + tema + ", ";
                            }
                        }
                        i++;
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("temas")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "temas", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("temas1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "temas", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("temas2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "temas", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 6) {
                String curso = message.substring(7, message.length());
                ArrayList<String> resp = BL_Curso.getCursoTemas(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    int i = 0;
                    full_response = "Los contenidos del curso " + resp.get(0) + " son: ";
                    for (String tema : resp) {
                        if (i >= 1) {
                            if (i + 1 == resp.size()) {
                                full_response = full_response + tema;
                            } else {
                                full_response = full_response + tema + ", ";
                            }
                        }
                        i++;
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }

    }

    /**
     * Comando competencias
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(competencias|Competencias)")
    public void competencias(Event event) {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 12) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "competencias", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(13, message.length());
                ArrayList<String> resp = BL_Curso.getCursoCompetencias(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    int i = 0;
                    full_response = "Las competencias a obtener del curso: " + resp.get(0) + " son: ";
                    for (String tema : resp) {
                        if (i >= 1) {
                            if (i + 1 == resp.size()) {
                                full_response = full_response + tema;
                            } else {
                                full_response = full_response + tema + ", ";
                            }
                        }
                        i++;
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("competencias")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "competencias", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("competencias1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "competencias", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("competencias2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "competencias", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 13) {
                String curso = message.substring(13, message.length());
                ArrayList<String> resp = BL_Curso.getCursoCompetencias(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    int i = 0;
                    full_response = "Las competencias a obtener del curso: " + resp.get(0) + " son: ";
                    for (String tema : resp) {
                        if (i >= 1) {
                            if (i + 1 == resp.size()) {
                                full_response = full_response + tema;
                            } else {
                                full_response = full_response + tema + ", ";
                            }
                        }
                        i++;
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }

    }

    /**
     * Comando retos
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(retos|Retos)")
    public void retos(Event event) throws ParseException {
        Connection cn = JBotApplication.getConnection();
        ArrayList<String> cursos = BL_Curso.getCursos(cn);
        if (event.getType() == EventType.MESSAGE) {
            System.out.println(String.format("Text: %s", event.getMessage().getText()));
            String message = event.getMessage().getText();
            if (message.length() == 5) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "retos", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            } else {
                String curso = message.substring(6, message.length());
                Map<Integer, String[]> resp = BL_Curso.getCursoRetos(cn, Util.cleanData(curso));
                String full_response;
                if (resp != null) {
                    if (resp.size() >= 2) {
                        Date fecha = new SimpleDateFormat("dd-MM-yyyy").parse(resp.get(0)[2]);
                        full_response = "Los retos del curso " + resp.get(0)[0] + " son ";
                        for (Map.Entry<Integer, String[]> entry : resp.entrySet()) {
                            full_response = full_response + entry.getValue()[1] + " FE: (" + new SimpleDateFormat("dd-MM-YYY").format(fecha) + ") ";
                        }
                    } else {
                        Date fecha = new SimpleDateFormat("dd-MM-yyyy").parse(resp.get(0)[2]);
                        full_response = "El reto de " + resp.get(0)[0] + " es :" + resp.get(0)[1] + " y debera ser entregado el dia: "
                                + new SimpleDateFormat("dd-MM-YYY").format(fecha);
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            System.out.println(String.format("Payload: %s", event.getMessage().getQuickReply().getPayload()));
            String message = event.getMessage().getQuickReply().getPayload();
            if (message.equals("retos")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 0, "retos", "1");
                reply(event, new Message().setText("Que curso te gustaria conocer?").setQuickReplies(quickReplies));
            }
            if (message.equals("retos1")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 8, "retos", "2");
                reply(event, new Message().setText("Desplegando más cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.equals("retos2")) {
                Button[] quickReplies = Util.displayCursoOptions(cursos, 16, "retos", "");
                reply(event, new Message().setText("Desplegando cursos\nQue curso te gustaria conocer?")
                        .setQuickReplies(quickReplies));
            }
            if (message.length() > 6) {
                String curso = message.substring(6, message.length());
                Map<Integer, String[]> resp = BL_Curso.getCursoRetos(cn, Util.cleanData(curso));
                String full_response;
                if (resp.size() > 0) {
                    if (resp.size() >= 2) {
                        full_response = "Los retos del curso " + resp.get(0)[0] + " son ";
                        for (Map.Entry<Integer, String[]> entry : resp.entrySet()) {
                            full_response = full_response + entry.getValue()[0] + " FE: (" + entry.getValue()[1] + ") ";
                        }
                    } else {
                        Date fecha = new SimpleDateFormat("dd-MM-yyyy").parse(resp.get(0)[2]);
                        full_response = "El reto de " + resp.get(0)[0] + " es :" + resp.get(0)[1] + " y debera ser entregado el dia: "
                                + new SimpleDateFormat("dd-MM-YYY").format(fecha);
                    }
                    reply(event, new Message().setText(full_response));
                } else {
                    reply(event, new Message().setText("No se ha encontrado el curso " + curso + ". Revisa nuestros comandos " +
                            "disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        }
    }

    /**
     * Comando FAQ
     * TODO test
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "^(faq|Faq|FAQ)")
    public void faq(Event event) throws ParseException {
        Connection cn = JBotApplication.getConnection();
        String message = event.getMessage().getText();
        if (event.getType() == EventType.MESSAGE) {
            if (message.length() == 3) {
                reply(event, new Message().setText("Recuerda usar el comando Faq seguido de tu pregunta"));
            } else {
//                if (BL_Inputs.insertQuestion(cn,name,created_at,usuario,text,source,location,input)!=0){
//                    System.out.println("Pregunta guardada en base de datos");
//                }else{
//                    System.out.println("No se ha guardado en la base de datos");
//                }
                String pregunta = message.substring(4, message.length());
                String resp[] = BL_FAQ.getRespuesta(cn, pregunta);
//                TODO intentar obtener los datos del una persona
                String full_response;
                if (resp[0] != null) {
                    full_response = resp[0] + "... " + resp[1];
                    reply(event, new Message().setText(full_response));

                } else {
                    reply(event, new Message().setText("No se ha encontrado tu pregunta, puedes revisar nuestras preguntas" +
                            " frecuentes http://opencampus.utpl.edu.ec/faq ; O revisa nuestros comandos disponibles").setQuickReplies(Util.displayComandos()));
                }
            }
        } else {
            reply(event, new Message().setText("Para preguntar usar el comando Faq seguido de tu pregunta"));
        }
    }


    /**
     * This method gets invoked when a user clicks on the "Get Started" button or just when someone simply types
     * hi, hello or hey. When it is the former, the event type is {@code EventType.POSTBACK} with the payload "hi"
     * and when latter, the event type is {@code EventType.MESSAGE}.
     *
     * @param event
     */
    @Controller(events = {EventType.MESSAGE, EventType.POSTBACK}, pattern = "^(?i)(hola|saludos)$")
    public void onGetStarted(Event event) {
        // quick reply buttons
        Button[] quickReplies = new Button[]{
                new Button().setContentType("text").setTitle("Si").setPayload("si"),
                new Button().setContentType("text").setTitle("No").setPayload("no"),
        };
        reply(event, new Message().setText("Te gustaria ver las peliculas disponbiles").setQuickReplies(quickReplies));
    }

}
