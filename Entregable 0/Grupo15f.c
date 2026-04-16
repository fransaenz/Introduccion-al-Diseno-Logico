#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdint.h>

int esDecValido(const char * str) { // Verifica que la cadena cumpla el formato.
    if (strlen(str) != 9 || str[4] != '.') return 0; // 9 caracteres y el 5to es '.'
    if (str[0] != '-' && str[0] != '+') return 0; // El primer carácter deber ser + o -
    int i;
    // Verifica que todos los demás carácteres sean dígitos.
    for (i = 1; i < 4; i++) {
        if (!isdigit(str[i])) return 0;
    }
    for (i = 5; i < 9; i++) {
        if (!isdigit(str[i])) return 0;
    }
    return 1;
}
int separarPartes(const char * str, short * ent, int * frac) {
    char entero[4];
    char fraccion[5];
    // Separa los 3 bits de la parte entera y los 4 bits de la parte fraccionaria.
    strncpy(entero, str+1, 3);
    strncpy(fraccion, str+5, 4);
    // Convierte las subcadenas a enteros. Los carácteres si o si son dígitos, fueron verificados anteriormente.
    *ent = (short) atoi(entero);
    *frac = atoi(fraccion);
    if (str[0] == '-') *ent *= -1; // Convierte la parte entera a negativo si es necesario.
    return 0;
}

int main() {
    char entrada[20];
    printf("Ingrese un numero en formato %ceee.ffff: ", 241);
    scanf("%19s", entrada);
    if (!esDecValido(entrada)) { // Valida si el numero ingresado cumple con el formato.
        printf("El formato no es valido.\n");
        return 1;
    }

    short parteEntera;
    int parteFraccionaria;
    separarPartes(entrada, &parteEntera, &parteFraccionaria); // Separa en dos variables enteras a la parte entera y fraccionaria.
    if (parteEntera < -128 || parteEntera > 127) { // Si el numero se encuentra fuera de rango termina la ejecución.
        printf("El numero no puede ser expesado en Q(7,8). Fuera del rango [-128.xxxx , +127.xxxx].\n");
        return 2;
    }

    short valorPuntoFijo = parteEntera << 8; // Coloca los bits de la parte entera en los primeros 8 bits.
    parteFraccionaria = (parteFraccionaria * 256)/10000;
    /* Convierte la parte fraccionaria decimal a su respectiva en punto fijo.
     * Trunca el resultado de la division, para evitar que el redondeo para arriba saque de rango a la parte entera*/
    valorPuntoFijo += parteFraccionaria; // Suma la parte fraccionaria en los últimos 8 bits.
    printf("El numero %s expresado en Q(7,8) es: 0x%04X \n", entrada, (unsigned short) valorPuntoFijo);
    return 0;
}