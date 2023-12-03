import com.intuit.karate.junit5.Karate;

public class rmRunner {
    @Karate.Test
    Karate testStarWars() {
        return Karate.run("rickMorty").relativeTo(getClass());
    }    

}