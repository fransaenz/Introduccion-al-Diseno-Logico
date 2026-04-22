#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int esHexValido(const char *str) {
    // Debe empezar con 0x y tener exactamente 6 caracteres: 0xHHHH
    if (strlen(str) != 6 || str[0] != '0' || str[1] != 'x')
        return 0;

    for (int i = 2; i < 6; i++) {
        if (!isxdigit(str[i])) // Si un carácter no es hexadecimal devuelve false.
            return 0;
    }
    return 1;
}

int main() {
    char entrada[20];
    printf("Ingrese un numero en formato 0xHHHH: ");
    scanf("%19s", entrada);

    while (!esHexValido(entrada)) { // Mientras la entrada no cumpla el formato 0xHHHH la volverá a solicitar.
        printf("Entrada invalida. Ingrese nuevamente: ");
        scanf("%19s", entrada);
    }

    // Convertir a entero de 16 bits con signo
    int valor = (int) strtol(entrada, NULL, 16); // Convierte carácteres a su respectivo entero, el argumento 16 indica la base (hexadecimal)
    if (valor & 0x8000)
        valor *= -1; // Si el bit mas significativo del número convertido es 1, entonces convierte el entero en negativo.

    // Separar parte entera y fraccionaria
    int parte_entera = valor >> 8; // Desplaza los bits 8 posiciones hacia la derecha (completando con 1 si es negativo), quedandose solo la parte entera.
    unsigned parte_fraccional = valor & 0xFF; // Se queda con los ultimos 8 bits del número.

    unsigned fraccion_decimal = (parte_fraccional * 10000) / 256;
    /* Dividir el entero por 2^7 lo convierte en la parte completamente fraccionaria buscada (entre 0 y 1).
     * Por eso primero se multiplica por 10000, para obtener al menos 4 digitos enteros.*/

    printf("Valor decimal: %d.%04d\n", parte_entera, fraccion_decimal);

    return 0;
}