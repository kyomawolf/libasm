#include "libasm.h"
#include <stdio.h>
#include <string.h>

int main() {
    char *str = "a string has this length with special chars like these: Ä or ü*ß\0";
    //ft_strlen(str),
    ft_write(1, str, 10);
    //printf("%s, %i, %lu\n",str, ft_strlen(str),  strlen(str));
}