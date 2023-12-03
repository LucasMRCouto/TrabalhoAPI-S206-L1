import com.intuit.karate.junit5.Karate;

class RMRunner {
    
    @Karate.Test
    Karate testRickMorty() {
        return Karate.run("rickMorty").relativeTo(getClass());
    }    

}