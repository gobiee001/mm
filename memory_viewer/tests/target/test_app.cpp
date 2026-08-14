// Native C++ test application for Memory Scanner verification

#include <iostream>
#include <string>
#include <thread>
#include <chrono>

int32_t testInt = 123456;
float testFloat = 123.456f;
double testDouble = 987.654;
char testChar = 'X';
char testString[32] = "FRIDA_TEST_STRING";
wchar_t testUtf16[32] = L"FRIDA_UTF16";

int main() {
    std::cout << "==============================================" << std::endl;
    std::cout << "         MemScan Native Test Target           " << std::endl;
    std::cout << "==============================================" << std::endl;
    
    // Print addresses for manual check
    std::cout << "Variable Addresses:" << std::endl;
    std::cout << "  testInt    (int32):  " << &testInt << "  (val: " << testInt << ")" << std::endl;
    std::cout << "  testFloat  (float):  " << &testFloat << "  (val: " << testFloat << ")" << std::endl;
    std::cout << "  testDouble (double): " << &testDouble << "  (val: " << testDouble << ")" << std::endl;
    std::cout << "  testChar   (char):   " << (void*)&testChar << "  (val: '" << testChar << "')" << std::endl;
    std::cout << "  testString (string): " << (void*)testString << "  (val: \"" << testString << "\")" << std::endl;
    std::cout << "  testUtf16  (utf16):  " << (void*)testUtf16 << "  (val: L\"FRIDA_UTF16\")" << std::endl;
    std::cout << "==============================================" << std::endl;
    
    std::cout << "Type 'c' to change values, or 'q' to quit." << std::endl;
    
    std::string input;
    int iteration = 1;
    while (true) {
        std::cout << "\n[Iteration " << iteration << "] Enter command (c=change values, q=quit): ";
        if (!std::getline(std::cin, input)) {
            break;
        }
        
        if (input == "q") {
            break;
        } else if (input == "c") {
            // Modify values
            testInt += 100;
            testFloat += 1.5f;
            testDouble += 10.0;
            testChar = testChar == 'X' ? 'Y' : 'X';
            
            if (iteration % 2 == 1) {
                strcpy_s(testString, "CHANGED_STRING");
                wcscpy_s(testUtf16, L"CHANGED_UTF16");
            } else {
                strcpy_s(testString, "FRIDA_TEST_STRING");
                wcscpy_s(testUtf16, L"FRIDA_UTF16");
            }
            
            std::cout << "Values changed!" << std::endl;
            std::cout << "  New testInt:    " << testInt << std::endl;
            std::cout << "  New testFloat:  " << testFloat << std::endl;
            std::cout << "  New testDouble: " << testDouble << std::endl;
            std::cout << "  New testChar:   '" << testChar << "'" << std::endl;
            std::cout << "  New testString: \"" << testString << "\"" << std::endl;
        } else {
            std::cout << "Unknown command." << std::endl;
        }
        iteration++;
    }
    
    std::cout << "Target exiting." << std::endl;
    return 0;
}
