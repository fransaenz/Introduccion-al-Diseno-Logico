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
int separarPartes(const char * str, int * ent, int * frac, int * signo) {
    char entero[4];
    char fraccion[5];
    // Separa los 3 bits de la parte entera y los 4 bits de la parte fraccionaria, agregando el carácter nulo al final.
    strncpy(entero, str+1, 3);
    entero[3] = '\0';
    strncpy(fraccion, str+5, 4);
    fraccion[4] = '\0';
    // Convierte las subcadenas a enteros. Los carácteres si o si son dígitos, fueron verificados anteriormente.
    *ent = atoi(entero);
    *frac = atoi(fraccion);
    *signo = (str[0] == '-') ? -1 : 1; // Guarda el signo de para aplicarlo mas tarde.
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

    int parteEntera;
    int parteFraccionaria;
    int signo;
    separarPartes(entrada, &parteEntera, &parteFraccionaria, &signo); // Separa en dos variables enteras a la parte entera y fraccionaria.
    if ((signo == 1 && parteEntera > 127) || (signo == -1 && parteEntera > 128) || (parteEntera == 128 && parteFraccionaria > 0)) { // Si el numero se encuentra fuera de rango termina la ejecución.
        printf("El numero no puede ser expesado en Q(7,8). Fuera del rango [-128.0000 , +127.9960].\n");
        return 2;
    }

    int valorPuntoFijo = parteEntera << 8; // Coloca los bits de la parte entera en los primeros 8 bits.
    int fraccionPuntoFijo = (parteFraccionaria * 256)/10000;
    /* Convierte la parte fraccionaria decimal a su respectiva en punto fijo.
     * Trunca el resultado de la division, para evitar que el redondeo para arriba saque de rango a la parte entera*/
    valorPuntoFijo += fraccionPuntoFijo; // Suma la parte fraccionaria en los últimos 8 bits.
    valorPuntoFijo *= signo;
    printf("El numero %s expresado en Q(7,8) es: 0x%04X \n", entrada, (unsigned short) valorPuntoFijo);
    return 0;
}