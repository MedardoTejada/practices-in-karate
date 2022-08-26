package chapterTestContainer;

import com.intuit.karate.junit5.Karate;

public class ExamplesTest {
    @Karate.Test
    Karate testSample() {
        return Karate.run("classpath:chapterTestContainer/testVariables/testvariables.feature").relativeTo(getClass());
    }
}
