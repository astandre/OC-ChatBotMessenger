package chatbot.jbot.facebook;


import chatbot.jbot.model.Movie;
import me.ramswaroop.jbot.core.common.Controller;
import me.ramswaroop.jbot.core.common.EventType;
import me.ramswaroop.jbot.core.common.JBot;
import me.ramswaroop.jbot.core.facebook.Bot;
import me.ramswaroop.jbot.core.facebook.models.Attachment;
import me.ramswaroop.jbot.core.facebook.models.Button;
import me.ramswaroop.jbot.core.facebook.models.Element;
import me.ramswaroop.jbot.core.facebook.models.Event;
import me.ramswaroop.jbot.core.facebook.models.Message;
import me.ramswaroop.jbot.core.facebook.models.Payload;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Profile;

import javax.annotation.PostConstruct;

import chatbot.jbot.moviesHandler;

import java.util.ArrayList;

/**
 * A simple Facebook Bot. You can create multiple bots by just
 * extending {@link Bot} class like this one. Though it is
 * recommended to create only bot per jbot instance.
 *
 * @author ramswaroop
 * @version 17/09/2016
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
     * Creando lista de peliculas
     */
    ArrayList<Movie> lstMovies = moviesHandler.createMovies();

    /**
     * Sets the "Get Started" button with a payload "hi". It also set the "Greeting Text" which the user sees when it
     * opens up the chat window. Uncomment the {@code @PostConstruct} annotation only after you have verified your
     * webhook.
     */
    @PostConstruct
    public void init() {
        setGetStartedButton("Empezar");
        setGreetingText(new Payload[]{new Payload().setLocale("default").setText("Chat bot creado con la libreria Jbot")});
    }

    /**
     * This method gets invoked when a user clicks on the "Get Started" button or just when someone simply types
     * hi, hello or hey. When it is the former, the event type is {@code EventType.POSTBACK} with the payload "hi"
     * and when latter, the event type is {@code EventType.MESSAGE}.
     *
     * @param event
     */
    @Controller(events = {EventType.MESSAGE, EventType.POSTBACK}, pattern = "^(?i)(hola|saludos|Empezar)$")
    public void onGetStarted(Event event) {
        // quick reply buttons
        Button[] quickReplies = new Button[]{
                new Button().setContentType("text").setTitle("Si").setPayload("si"),
                new Button().setContentType("text").setTitle("No").setPayload("no"),
        };
        reply(event, new Message().setText("Te gustaria ver las peliculas disponbiles").setQuickReplies(quickReplies));
    }

    /**
     * Metodo que muestra las peliculas con entradas disponibles al mecionar la palabra entrada
     */
    @Controller(events = EventType.MESSAGE, pattern = "(?i:entrada)")
    public void showAvalibleMovies(Event event) {
        reply(event, "Entradas disponibles para las siguientes peliculas:");
        for (Movie movie : lstMovies) {
            if (movie.getBoletos()) {
                String movieTitle = movie.getNombre();
                reply(event, movieTitle);
            }

        }
    }

    /**
     * mostrar informacion acerca de pelicula
     *
     * @param event
     */
    @Controller(events = {EventType.MESSAGE, EventType.QUICK_REPLY}, pattern = "(info)")
    public void showInfoMovie(Event event) {
        reply(event, "Informacion");
        int aux = event.getMessage().getQuickReply().getPayload().length();
        String word = event.getMessage().getQuickReply().getPayload().substring(5, aux);
        for (Movie movie : lstMovies) {
            if (movie.getNombre().contains(word)) {
                String movieTitle = movie.getNombre();
                reply(event, movieTitle + "\n" + movie.getSinopsis());
            }

        }
    }

    /**
     * muestra las peliculas disnponibles en botones
     */
    @Controller(events = {EventType.MESSAGE, EventType.POSTBACK}, pattern = "(?i:disponible)")
    public void showMovies(Event event) {
        // quick reply buttons
        Button[] quickReplies = new Button[lstMovies.size()];
        int i = 0;
        for (Movie movie : lstMovies) {
            quickReplies[i] = new Button().setContentType("text").setTitle(movie.getNombre()).setPayload("info " + movie.getNombre());
            i++;

        }

        reply(event, new Message().setText("Peliculas disponibles").setQuickReplies(quickReplies));
    }

    /**
     * Mostar la mejor pelicula
     */
    @Controller(events = EventType.MESSAGE, pattern = "(mejor)")
    public void showBestMovie(Event event) {

        double max = lstMovies.get(0).getCalificacion();
        int id = 0, i = 0;
        for (Movie movie : lstMovies) {
            if (movie.getCalificacion() > max) {
                id = i;
                max = movie.getCalificacion();
            }
            i++;
        }
        reply(event, "Pelicula con mejor calificacion: \n" + lstMovies.get(id).getNombre());
    }

    /**
     * Mostrar ayuda
     */
    @Controller(events = EventType.MESSAGE, pattern = "(ayuda|Ayuda)")
    public void showHelp(Event event) {
        reply(event, "Que puedo hacer: \n 1) Mostrar peliculas disponibles \n 2) Mostrar informacion de pelicula \n 3) Mostrar mejor pelicula");
    }

    /**
     * This method gets invoked when the user clicks on a quick reply button whose payload is either "yes" or "no".
     *
     * @param event
     */
    @Controller(events = EventType.QUICK_REPLY, pattern = "(si|no)")
    public void onReceiveQuickReply(Event event) {
        if ("si".equals(event.getMessage().getQuickReply().getPayload())) {

            for (Movie movie : lstMovies) {
                String movieTitle = movie.getNombre();
                reply(event, movieTitle);
            }

        } else {
            reply(event, "Hasta luego");
        }
    }

    /**
     * This method is invoked when the user types "Show Buttons" or something which has "button" in it as defined
     * in the {@code pattern}.
     *
     * @param event
     */
    @Controller(events = EventType.MESSAGE, pattern = "(?i:button)")
    public void showButtons(Event event) {
        Button[] buttons = new Button[]{
                new Button().setType("web_url").setUrl("http://blog.ramswaroop.me").setTitle("JBot Docs"),
                new Button().setType("web_url").setUrl("https://goo.gl/uKrJWX").setTitle("Buttom Template")
        };
        reply(event, new Message().setAttachment(new Attachment().setType("template").setPayload(new Payload()
                .setTemplateType("button").setText("These are 2 link buttons.").setButtons(buttons))));
    }

    @Controller(events = EventType.MESSAGE, pattern = "(image)")
    public void showImage(Event event) {
//        reply(event, new Message().setAttachment(new Attachment().setType("template").setPayload(new Payload()
//                .setTemplateType("list").setElements(elements))));

        reply(event, new Message().setAttachment(
                new Attachment()
                        .setType("image")
                        .setPayload(
                                new Payload()
                                        .setUrl("https://ia.media-imdb.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_UX182_CR0,0,182,268_AL_.jpg"))));
    }

    /**
     * This method is invoked when the user types "Show List" or something which has "list" in it as defined
     * in the {@code pattern}.
     *
     * @param event
     */
    @Controller(events = EventType.MESSAGE, pattern = "(?i:list)")
    public void showList(Event event) {
        int i = 0;
        Element[] elements = new Element[lstMovies.size()];
//        {
//                new Element().setTitle("AnimateScroll").setSubtitle("A jQuery Plugin for Animating Scroll.")
//                        .setImageUrl("https://plugins.compzets.com/images/as-logo.png")
//                        .setDefaultAction(new Button().setType("web_url").setMessengerExtensions(true)
//                        .setUrl("https://plugins.compzets.com/animatescroll/")),
//                new Element().setTitle("Windows on Top").setSubtitle("Keeps a specific Window on Top of all others.")
//                        .setImageUrl("https://plugins.compzets.com/images/compzets-logo.png")
//                        .setDefaultAction(new Button().setType("web_url").setMessengerExtensions(true)
//                        .setUrl("https://www.compzets.com/view-upload.php?id=702&action=view")),
//                new Element().setTitle("SimpleFill").setSubtitle("Simplest form filler ever.")
//                        .setImageUrl("https://plugins.compzets.com/simplefill/chrome-extension/icon-64.png")
//                        .setDefaultAction(new Button().setType("web_url").setMessengerExtensions(true)
//                        .setUrl("https://plugins.compzets.com/simplefill/"))
//        };
        for (Movie movie : lstMovies) {

            elements[i] = new Element().setTitle(movie.getNombre()).setSubtitle(String.valueOf(movie.getCalificacion()))
                    .setImageUrl(movie.getImg())
                    .setDefaultAction(new Button().setType("web_url").setMessengerExtensions(true)
                            .setUrl(movie.getUrl()));
            i++;
        }

        reply(event, new Message().setAttachment(new Attachment().setType("template").setPayload(new Payload()
                .setTemplateType("list").setElements(elements))));
    }

    /**
     * Show the github project url when the user says bye.
     *
     * @param event
     */
    @Controller(events = EventType.MESSAGE, pattern = "(?i)(chao|hasta luego|nos vemos|adios)")
    public void showGithubLink(Event event) {
        reply(event, new Message().setAttachment(new Attachment().setType("template").setPayload(new Payload()
                .setTemplateType("button").setText("Hasta luego!").setButtons(new Button[]{new Button()
                        .setType("web_url").setTitle("Acerca De").setUrl("https://git.taw.utpl.edu.ec/andreherrera97/chatbot")}))));
    }


    // Conversation feature of JBot

    /**
     * Type "setup meeting" to start a conversation with the bot. Provide the name of the next method to be
     * invoked in {@code next}. This method is the starting point of the conversation (as it
     * calls {@link Bot#startConversation(Event, String)} within it. You can chain methods which will be invoked
     * one after the other leading to a conversation.
     *
     * @param event
     */
    @Controller(pattern = "(?i)(setup meeting)", next = "confirmTiming")
    public void setupMeeting(Event event) {
        startConversation(event, "confirmTiming");   // start conversation
        reply(event, "Cool! At what time (ex. 15:30) do you want me to set up the meeting?");
    }

    /**
     * This method will be invoked after {@link FbBot#setupMeeting(Event)}. You need to
     * call {@link Bot#nextConversation(Event)} to jump to the next question in the conversation.
     *
     * @param event
     */
    @Controller(next = "askTimeForMeeting")
    public void confirmTiming(Event event) {
        reply(event, "Your meeting is set at " + event.getMessage().getText() +
                ". Would you like to repeat it tomorrow?");
        nextConversation(event);    // jump to next question in conversation
    }

    /**
     * This method will be invoked after {@link FbBot#confirmTiming(Event)}. You can
     * call {@link Bot#stopConversation(Event)} to end the conversation.
     *
     * @param event
     */
    @Controller(next = "askWhetherToRepeat")
    public void askTimeForMeeting(Event event) {
        if (event.getMessage().getText().contains("yes")) {
            reply(event, "Okay. Would you like me to set a reminder for you?");
            nextConversation(event);    // jump to next question in conversation
        } else {
            reply(event, "No problem. You can always schedule one with 'setup meeting' command.");
            stopConversation(event);    // stop conversation only if user says no
        }
    }

    /**
     * This method will be invoked after {@link FbBot#askTimeForMeeting(Event)}. You can
     * call {@link Bot#stopConversation(Event)} to end the conversation.
     *
     * @param event
     */
    @Controller
    public void askWhetherToRepeat(Event event) {
        if (event.getMessage().getText().contains("yes")) {
            reply(event, "Great! I will remind you tomorrow before the meeting.");
        } else {
            reply(event, "Okay, don't forget to attend the meeting tomorrow :)");
        }
        stopConversation(event);    // stop conversation
    }
}
