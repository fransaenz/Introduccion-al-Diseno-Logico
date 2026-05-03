#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

int esDecValido(const char * str) { // Verifica que la cadena cumpla el formato.
    
    if (strlen(str) < 4) {
        printf("Error: la cadena debe tener al menos 4 caracteres\n");
        return 0;
    }

    if (str[0] != '-' && str[0] != '+') {
        printf("Error: el primer carácter debe ser '+' o '-'\n");
        return 0;
    }

    int i;
    int punto = -1;
    
    // Verifica que todos los demás carácteres sean dígitos y que tenga el '.'.
    for (i = 1; str[i] != '\0'; i++) {
    
        if (str[i] == '.') {
    
            if (punto != -1) {
                printf("Error: debe haber un solo punto decimal\n");
                return 0;
            }
            punto = i; // Guarda la posición del punto 
    
        }

        else if (!isdigit(str[i])) {
            printf("Error: no debe haber caracteres no numéricos\n");
            return 0;
        }
    }
    
    if (punto == 1) {
        printf("Error: no hay entero\n");
        return 0;
    }
    if (str[punto + 1] == '\0') {
        printf("Error: no hay fracción\n");
        return 0;
    }
    
    return punto != -1; // El formato es válido solo si se encontró un unico punto y este no es el ultimo o segundo caracter.
}


int separarPartes(const char * str, int * ent, int * frac, int * decimales, int * sgn) { // Separa la parte entera y fraccionaria de la cadena, y cuenta la cantidad de decimales para ajustar la conversión a punto fijo.
    
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
    
    if (str[0] == '-') *sgn = -1; // Convierte la parte entera a negativo si es necesario.
    else *sgn = 1;
    
    return 0;
}



// convierte a punto fijo
int convertirQ(int ent, int frac, int bitsFrac, int decimales, int signo) {
    
    int numero = ent << bitsFrac;

    // ajustar fracción
    int divisor = 1;
    for (int i = 0; i < decimales; i++) divisor *= 10; 

    int fracEscalada = (frac * (1 << bitsFrac)) / divisor;

    numero += fracEscalada;
    numero *= signo; // Aplica el signo al resultado final.

    return numero;
}


int main() {

    char m_str[20], b_str[20], x_str[20];

    printf("Ingrese m (±entero.decimal) [-1, 1): ");
    scanf("%19s", m_str);

    printf("Ingrese b (±entero.decimal) [-128, 128): ");
    scanf("%19s", b_str);

    printf("Ingrese x (±entero.decimal): ");
    scanf("%19s", x_str);

    //valido que las entradas sean correctas
    if (!esDecValido(m_str) || !esDecValido(b_str) || !esDecValido(x_str)) {
        printf("Error: formato invalido\n");
        return 1;
    }

    //separo las partes entera y fraccionaria de cada número y la cantidad de decimales para ajustar la conversión a punto fijo.
    int m_ent, m_frac, m_dec, m_sgn;
    int b_ent, b_frac, b_dec, b_sgn;
    int x_ent, x_frac, x_dec, x_sgn;

    separarPartes(m_str, &m_ent, &m_frac, &m_dec, &m_sgn);
    separarPartes(b_str, &b_ent, &b_frac, &b_dec, &b_sgn);
    separarPartes(x_str, &x_ent, &x_frac, &x_dec, &x_sgn);

    // convierto a punto fijo
    int m_q = convertirQ(m_ent, m_frac, 15, m_dec, m_sgn);   // Q(0,15)
    // validar rango de m
    if (m_q < -(1 << 15) || m_q >= (1 << 15)) {
        printf("Error: m fuera de rango para Q(0,15)\n");
        return 1;
    }
    int b_q = convertirQ(b_ent, b_frac, 8, b_dec, b_sgn);    // Q(7,8)
    // validar rango de b
    if (b_q < -(1 << 15) || b_q >= (1 << 15)) {
        printf("Error: b fuera de rango para Q(7,8)\n");
        return 1;
    }

    int x_q = convertirQ(x_ent, x_frac, 15, x_dec, x_sgn);   // Q(16,15)


    //calculo de y = m*x + b en punto fijo

    //calculo m*x
    long long mult = (long long) m_q * x_q;

    // ajustar escala: (0,15) * (16,15) = (16,30) → bajar a (16,15)
    int mult_ajustado = (int)(mult >> 15);

    // ajustar b a la misma escala que m*x para poder sumarlos: (7,8) → (14,15)
    int b_ajustado = b_q << (7); 

    //calculo y sumando b
    int y_q = mult_ajustado + b_ajustado;


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