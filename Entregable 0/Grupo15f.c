#include <ctype.h>
#include <stdio.h>

int strToPuntoFijo(char *str, int * numero) {
    if ((str[0] != '-' && str[0] != '+') || str[4] != '.') return 1; // El primer carácter no cumple el formato.
    int entero = 0;
    int i = 1;
    while (str[i] != '\0' && (i < 4)) {
        if (!isdigit(str[i])) return 1; // Hay un caracter que no es dígito.
        entero = entero * 10 + (str[i] - '0');
        i++;
    }
    if (entero > 128 || (entero == 128 && str[0] == '+')) return 1; // Fuera de rango entero.
    i = 5;
    int fraccion = 0;
    while (str[i] != '\0' && (i < 9)) {
        if (!isdigit(str[i])) return 1; // Hay un caracter que no es dígito.
        fraccion = fraccion * 10 + (str[i] - '0');
        i++;
    }
    fraccion = (fraccion * 256 + 5000) / 10000;
    *numero = entero << 8;
    *numero += fraccion;
    if (str[0] == '-') *numero *= -1;
    return 0;
}

int main() {
    char entrada[20];
    printf("Ingrese un numero en formato %ceee.ffff: ", 241);
    scanf("%19s", entrada);
    int puntoFijo;
    if (strToPuntoFijo(entrada, &puntoFijo)) {
        printf("Error. El numero no cumple con el formato solicitado. Rango [-128.0000 , +127.9960]\n");
        return 2;
    }
    printf("El numero %s expresado en Q(7,8) es: 0x%04X \n", entrada, (unsigned short) puntoFijo);
    return 0;
}