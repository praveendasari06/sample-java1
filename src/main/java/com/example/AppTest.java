package com.example;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class AppTest {

    @Test
    void testSum() {
        int result = 2 + 3;
        assertEquals(5, result, "Sum should be 5");
    }
}
