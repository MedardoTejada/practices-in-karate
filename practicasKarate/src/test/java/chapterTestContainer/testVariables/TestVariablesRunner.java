package chapterTestContainer.testVariables;

import com.intuit.karate.junit5.Karate;

public class TestVariablesRunner {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:chapterTestContainer/testVariables/testvariables.feature").relativeTo(getClass());
    }
}
