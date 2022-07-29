package chapterTestContainer.testScenarioOutline.practica2;
import com.intuit.karate.junit5.Karate;

class TestScenarioOutlineRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:chapterTestContainer/testScenarioOutline/Practica1/testScenarioOutline.feature").relativeTo(getClass());
    }

}