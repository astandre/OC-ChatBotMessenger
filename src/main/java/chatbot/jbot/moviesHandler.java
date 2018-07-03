package chatbot.jbot;

import chatbot.jbot.model.Movie;

import java.util.ArrayList;

public class moviesHandler {
    public static ArrayList<Movie> createMovies() {
        ArrayList<Movie> lstMovies = new ArrayList<>();
        String[] horario = {"Lunes 2pm", "Martes 3pm", "Miercoles 4pm", " Jueves 11am", "Viernes 5pm", "Sabado 9am", "Domingo 8pm"};
        String sinopsis = "Un nuevo peligro acecha procedente de las sombras del cosmos. Thanos, el infame tirano intergaláctico, tiene como objetivo reunir las seis Gemas del Infinito, artefactos de poder inimaginable, y usarlas para imponer su perversa voluntad a toda la existencia. Los Vengadores y sus aliados tendrán que luchar contra el mayor villano al que se han enfrentado nunca, y evitar que se haga con el control de la galaxia. En su nueva e impactante aventura, el destino de la Tierra nunca había sido más incierto, las Gemas del Infinito estarán en juego, unos querrán protegerlas y otros controlarlas, ¿quién ganará?";
        String img ="https://ia.media-imdb.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_UX182_CR0,0,182,268_AL_.jpg" ;
        String url ="https://www.imdb.com/title/tt4154756/?ref_=nv_sr_1";
        Movie objMovie = new Movie("Avengers infinity war", sinopsis, 4.4, false, horario,img,url);
        lstMovies.add(objMovie);

        sinopsis = "Peter Rabbit no es un conejo cualquiera. Es un rebelde travieso y aventurero que viste camisa azul y no lleva pantalones. Peter vive junto a su familia y amigos, un grupo variopinto de animales que incluye incluso a un zorro. Todos ellos harán de las suyas en la granja de los McGregor, lugar en cuyo jardín disponen de deliciosos vegetales. Pero la disputa de Peter con el Sr. McGregor (Domhnall Gleeson) se intensificará más que nunca ya que ambos compiten por el afecto de Bea, (Rose Byrne), una amante de los animales de buen corazón. La fiesta animal ha empezado, y esto es solo el principio.";
        objMovie = new Movie("Peter Rabbit", sinopsis, 3.2, true, horario,img,url);
        lstMovies.add(objMovie);

        sinopsis = "Davis Okoye (Dwayne Johnson) es un especialista en primates de reconocido prestigio que mantiene un vínculo muy importante con un singular gorila albino llamado George, un animal que posee una inteligencia extraordinaria y al que lleva cuidando desde su nacimiento. Cuando este gorila es víctima de una peligrosa modificación genética, su ADN mutará rápidamente y de manera incontrolada";
        objMovie = new Movie("Proyecto Rampage", sinopsis, 3.6, true, horario,img,url);
        lstMovies.add(objMovie);

        sinopsis = "Un futuro distópico. En concreto es el año 2045. Mientras las grandes multinacionales se reparten las ganancias de un mundo en decadencia, la mayoría de la población mundial vive hacinada en torres formadas por autocaravanas. Es también el caso de Wade Watts (Tye Sheridan), un joven aficionado al videojuego de realidad virtual llamado OASIS que, con todas las posibilidades imaginables que ofrece, le proporciona una vía de escape, como a tantos otros ciudadanos que dedican más tiempo al juego que a la deprimente y oscura vida real.";
        objMovie = new Movie("Ready Player One", sinopsis, 4.3, true, horario,img,url);
        lstMovies.add(objMovie);

        return lstMovies;
    }
}
