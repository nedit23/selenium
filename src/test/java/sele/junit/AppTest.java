package sele.junit;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;

/**
 * Unit test for simple App.
 */

public class AppTest {

    @Test
    public void testEvenNumber() {
        int num = 10;
        assertEquals(0, num % 2);
    }

    @Test
    public void testOddNumber() {
        int num = 7;
        assertEquals(1, num % 2);
    }

    @Test
    public void testZero() {
        int num = 0;
        assertEquals(0, num % 2);
    }
}