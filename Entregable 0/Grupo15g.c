#include <stdio.h>
#include <ctype.h>

int hexToInt(const char *str, int * ent) {
    if (str[0] != '0' || str[1] != 'x') return 0; // Debe empezar con 0x
    int i = 2, num, valor = 0;
    while (str[i] != '\0' && (i < 6)) { // Solo lee 4 carácteres
        if (!isxdigit(str[i])) return 0;
        if (isdigit(str[i])) num = str[i] - '0';
        else num = toupper((unsigned char)str[i]) - 'A' + 10;
        valor = valor * 16 + num;
        i++;
    }
    if (valor & 0x8000) valor = ~(valor ^ 0xFFFF); // Completa con 1 a la izquierda si el MSB = 1;
    *ent = valor;
    return 1;
}
int parsearPuntoFijo(int fijo, char * signo, int * ent, int * frac) { // Divide el numero Q(7,8) en signo, entero, y fraccion.
    if (fijo < 0) {
        *signo = '-';
        fijo *= -1;
    }
    else *signo = '+';
    *ent = (fijo >> 8);
    *frac = fijo & 0xFF;
    *frac = *frac * 10000 / 256; // Multiplica por la escala 1/2^8 y por 10000 para obtener un entero
    return 1;
}
int main() {
    char entrada[20];
    printf("Ingrese un numero en formato 0xHHHH: ");
    scanf("%19s", entrada);
    int salida;
    while (!hexToInt(entrada, &salida)) { // Mientras la entrada no cumpla el formato la volverá a solicitar.
        printf("Entrada invalida. Ingrese nuevamente: ");
        scanf("%19s", entrada);
    }
    char signo;
    int parteEntera, parteFraccionaria;
    parsearPuntoFijo(salida, &signo, &parteEntera, &parteFraccionaria);
    printf("Valor decimal: %c%d.%04d\n", signo, parteEntera, parteFraccionaria);
    return 0;
}