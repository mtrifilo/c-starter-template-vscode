#include <stdio.h>

enum Constants {
    ANSWER_TO_EVERYTHING = 42
};

int main(void) {
    int the_answer = ANSWER_TO_EVERYTHING;

    printf("Hello, World! The answer is: %d\n", the_answer);

    return 0;
}
