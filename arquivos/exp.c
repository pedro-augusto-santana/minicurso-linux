// no linux, a biblioteca math.h precisa ser linkada, dessa forma, precisamos passar o parâmetro
// -lm para o compilador buscar essa biblioteca

#include <math.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv) {
    if (argc < 3) {
        puts("Argumentos insuficientes.");
        puts("exp 12 4");
        return 1;
    }

    long double resultado = pow(atof(argv[1]), atof(argv[2]));
    printf("%s elevado à potência %s é %.2Lf\n", argv[1], argv[2], resultado);
    return 0;
}
