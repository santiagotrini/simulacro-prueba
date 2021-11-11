#include <stdio.h>
#include <stdbool.h>
#include "helpers.h"

int main(int argc, char *argv[]) {
  printf("%s\n", es_palindromo(argv[1], count_chars(argv[1])) ? "si" : "no");
  return 0;
}
