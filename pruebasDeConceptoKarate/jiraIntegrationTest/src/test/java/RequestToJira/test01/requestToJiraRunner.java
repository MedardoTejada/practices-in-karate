package RequestToJira.test01;
import com.intuit.karate.junit5.Karate;

class requestToJiraRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:RequestToJira/test01/requestToJira.feature").relativeTo(getClass());
    }

}