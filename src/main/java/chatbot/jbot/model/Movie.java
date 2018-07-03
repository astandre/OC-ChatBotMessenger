package chatbot.jbot.model;

public class Movie {
    String nombre;
    String sinopsis;
    double calificacion;
    Boolean boletos;
    String [] horario;
    String img;
    String url;

    public Movie(String nombre, String sinopsis, double calificacion, Boolean boletos, String[] horario, String img, String url) {
        this.nombre = nombre;
        this.sinopsis = sinopsis;
        this.calificacion = calificacion;
        this.boletos = boletos;
        this.horario = horario;
        this.img = img;
        this.url = url;
    }

    public String getNombre() {
        return nombre;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public double getCalificacion() {
        return calificacion;
    }

    public Boolean getBoletos() {
        return boletos;
    }

    public String[] getHorario() {
        return horario;
    }

    public String getImg() {
        return img;
    }

    public String getUrl(){
        return url;
    }
}
