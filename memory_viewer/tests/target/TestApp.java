// Native Java test application for Memory Scanner verification

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class TestApp {
    // Declared as volatile and public to prevent compiler optimizations/inlining
    public static volatile int testInt = 123456;
    public static volatile float testFloat = 123.456f;
    public static volatile double testDouble = 987.654;
    public static volatile char testChar = 'X';
    public static volatile String testString = "FRIDA_TEST_STRING";
    public static volatile String testUtf16 = "FRIDA_UTF16";

    public static void main(String[] args) {
        System.out.println("==============================================");
        System.out.println("         MemScan Java Test Target             ");
        System.out.println("==============================================");
        System.out.println("Starting Java Test target...");
        System.out.println("System Process ID (approx): " + ProcessHandle.current().pid());
        
        System.out.println("Initial Values:");
        System.out.println("  testInt    (int32):  " + testInt);
        System.out.println("  testFloat  (float):  " + testFloat);
        System.out.println("  testDouble (double): " + testDouble);
        System.out.println("  testChar   (char):   '" + testChar + "'");
        System.out.println("  testString (string): \"" + testString + "\"");
        System.out.println("==============================================");
        System.out.println("Type 'c' to change values, or 'q' to quit.");

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(System.in))) {
            String input;
            int iteration = 1;
            while (true) {
                System.out.print("\n[Iteration " + iteration + "] Enter command (c=change values, q=quit): ");
                input = reader.readLine();
                if (input == null || input.equals("q")) {
                    break;
                }

                if (input.equals("c")) {
                    testInt += 100;
                    testFloat += 1.5f;
                    testDouble += 10.0;
                    testChar = testChar == 'X' ? 'Y' : 'X';
                    
                    if (iteration % 2 == 1) {
                        testString = "CHANGED_STRING";
                        testUtf16 = "CHANGED_UTF16";
                    } else {
                        testString = "FRIDA_TEST_STRING";
                        testUtf16 = "FRIDA_UTF16";
                    }

                    System.out.println("Values changed!");
                    System.out.println("  New testInt:    " + testInt);
                    System.out.println("  New testFloat:  " + testFloat);
                    System.out.println("  New testDouble: " + testDouble);
                    System.out.println("  New testChar:   '" + testChar + "'");
                    System.out.println("  New testString: \"" + testString + "\"");
                } else {
                    System.out.println("Unknown command.");
                }
                iteration++;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("Java Target exiting.");
    }
}
