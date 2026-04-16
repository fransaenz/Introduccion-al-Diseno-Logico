#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int esDecValido(const char * str) { // Verifica que la cadena cumpla el formato.
    
    if (strlen(str) < 4) return 0; // como minimo debe haber 4 caracteres (ej: +0.0)
    
    if (str[0] != '-' && str[0] != '+') return 0; // El primer carácter deber ser + o -
    
    int i;
    int punto = -1;
    
    // Verifica que todos los demás carácteres sean dígitos y que tenga el '.'.
    for (i = 1; str[i] != '\0'; i++) {
    
        if (str[i] == '.') {
    
            if (punto != -1) return 0; // Si ya se encontró un punto, el formato no es válido.
            punto = i; // Guarda la posición del punto 
    
        }

        else if (!isdigit(str[i])) return 0;
    }
    
    return punto != -1; // El formato es válido solo si se encontró un punto.
}


int separarPartes(const char * str, int * ent, int * frac, int * decimales) {
    
    char entero[20];
    char fraccion[20];

    int i = 1; // arranca después del signo
    int j = 0;
    
    // copia la parte entera
    while (str[i] != '.' && str[i] != '\0') {
        entero[j] = str[i];
        j++;
        i++;
    }
    entero[j] = '\0';

    i++; // salto el punto
    j = 0;//reinicio j

    // copia la parte fraccionaria
    while (str[i] != '\0') {
        fraccion[j] = str[i];
        j++;
        i++;
    }
    fraccion[j] = '\0';

    *ent = atoi(entero);
    *frac = atoi(fraccion);
    *decimales = j; // cantidad de dígitos en la parte fraccionaria 

    if (str[0] == '-') *ent *= -1; // Convierte la parte entera a negativo si es necesario.
    return 0;
}



// convierte a punto fijo
int convertirQ(int ent, int frac, int bitsFrac, int decimales) {
    
    int numero = ent << bitsFrac;

    // ajustar fracción
    int divisor = 1;
    for (int i = 0; i < decimales; i++) divisor *= 10; 

    int fracEscalada = (frac * (1 << bitsFrac)) / divisor;

    if (ent < 0) fracEscalada = -fracEscalada; // Si el número es negativo, la fracción también debe ser negativa.
    
    numero += fracEscalada;

    return numero;
}


int main() {

    char m_str[20], b_str[20], x_str[20];

    printf("Ingrese m (±entero.decimal): ");
    scanf("%19s", m_str);

    printf("Ingrese b (±entero.decimal): ");
    scanf("%19s", b_str);

    printf("Ingrese x (±entero.decimal): ");
    scanf("%19s", x_str);

    //valido que las entradas sean correctas
    if (!esDecValido(m_str) || !esDecValido(b_str) || !esDecValido(x_str)) {
        printf("Error: formato invalido\n");
        return 1;
    }

    //separo las partes entera y fraccionaria de cada número y la cantidad de decimales para ajustar la conversión a punto fijo.
    int m_ent, m_frac, m_dec;
    int b_ent, b_frac, b_dec;
    int x_ent, x_frac, x_dec;

    separarPartes(m_str, &m_ent, &m_frac, &m_dec);
    separarPartes(b_str, &b_ent, &b_frac, &b_dec);
    separarPartes(x_str, &x_ent, &x_frac, &x_dec);

    // convierto a punto fijo
    int m_q = convertirQ(m_ent, m_frac, 15, m_dec);   // Q(0,15)
    int b_q = convertirQ(b_ent, b_frac, 8, b_dec);    // (7,8)
    int x_q = convertirQ(x_ent, x_frac, 15, x_dec);   // (16,15)


    //calculo de y = m*x + b en punto fijo

    //calculo m*x
    long long mult = (long long) m_q * x_q;

    // ajustar escala: (0,15) * (16,15) = (16,30) → bajar a (16,15)
    int mult_ajustado = (int)(mult >> 15);

    //calculo y sumando b
    int y_q = mult_ajustado + b_q;


    printf("\n--- RESULTADOS ---\n");
    printf("m en (0,15): %d\n", m_q);
    printf("b en (7,8): %d\n", b_q);
    printf("x en (16,15): %d\n", x_q);

    printf("\ny en punto fijo (Q16.15): %d\n", y_q);
    printf("y en hexadecimal: 0x%X\n", y_q);

    // convertir a decimal para mostrar
    float y_decimal = (float)y_q / (1 << 15);
    printf("y en decimal: %f\n", y_decimal);

    return 0;
}