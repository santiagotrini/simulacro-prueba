#!/bin/bash

# colores
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
# contador
tests_passed=0
# funciones
test_output() {
  output=$($1)
  expected=$2
  if [[ "$output" == "$expected" ]]
  then
    echo -e "[  ${GREEN}OK${NC}  ]: $1 => $2 ${GREEN}✔️${NC}"
    tests_passed=$((tests_passed + 1))
  else
    echo -e "[ ${RED}Fail${NC} ]: Esperaba '$expected' pero se obtuvo '$output' ${RED}❌${NC}"
  fi
}

# ejercicio 1
echo "------- Testeando app -------"
# test 1.1
test_output "./app abba" "si"
# test 1.2
test_output "./app salas" "si"
# test 1.3
test_output "./app asd" "no"
# test 1.4
test_output "./app abcd" "no"
# test 1.5
test_output "./app neuquen" "si"

echo "-------  Resultado  -------"
# resultado final
if [[ $tests_passed -eq 20 ]]
then
  echo -e "Todos los tests pasaron ${GREEN}✔️${NC}"
else
  echo "Resultado: $tests_passed/5 tests OK."
fi
exit 0
