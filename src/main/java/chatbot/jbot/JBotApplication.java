package chatbot.jbot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import java.sql.Connection;
import java.sql.DriverManager;

@SpringBootApplication(scanBasePackages = {"me.ramswaroop.jbot", "chatbot.jbot"})
public class JBotApplication {
//    @Value("${host}")
//    private static String host ;
//    @Value("${db}")
//    private static String db ;
//    @Value("${user}")
//    private static String user ;
//    @Value("${pass}")
//    private static String pass ;
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }

    /**
     * Entry point of the application. Run this method to start the sample bots,
     * but don't forget to add the correct tokens in application.properties file.
     *
     * @param args
     */
    private static Connection connection;
    public static void main(String[] args) {
        SpringApplication.run(JBotApplication.class, args);
        try{
//            TODO parametrizar
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/ocdb",
                    "root", "");
//            connection = DriverManager.getConnection(
//                    host+db,
//                    user, pass);
            boolean valid = connection.isValid(50000);
            System.out.println(valid ? "TEST OK" : "TEST FAIL");
        } catch (java.sql.SQLException sqle) {
            System.out.println("Error: " + sqle);
        }
    }

    public static Connection getConnection(){
        return connection;
    }
}
