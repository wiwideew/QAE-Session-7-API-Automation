package APITest;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.Test;

public class RunAllTest {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:APItest")
                .parallel(1);
        assertTrue(results.getFailCount() == 0, results.getErrorMessages());
    }
}
