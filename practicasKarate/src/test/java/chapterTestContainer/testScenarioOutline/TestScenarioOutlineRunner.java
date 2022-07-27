package chapterTestContainer.testScenarioOutline;

import com.intuit.karate.junit5.Karate;

class TestScenarioOutlineRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("users").relativeTo(getClass());
    }    

}
