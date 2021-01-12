/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/03 11:49:52 by mg                #+#    #+#             */
/*   Updated: 2021/01/08 15:25:39 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
** https://www.cs.virginia.edu/~evans/cs216/guides/x86.html
**
*/

# include "libasm.h"

int main (void)
{
    printf("*******************************************************FT_STRLEN\n");
    int a = ft_strlen("hello world");
    printf("len: %d\n", a);

    printf("*******************************************************FT_STRCPY\n");

    char *str1;

    str1 = malloc(15);
    printf("str 1 |%s|\n", str1);
    ft_strcpy(str1, "HELLO JESSICA");
    printf("str 1 |%s|\n", str1);

    printf("*******************************************************FT_STRDUP\n");

    char *str2;
    printf("str 2 |%s|\n", str2);
    str2 = ft_strdup(str1);
    printf("str 2 |%s|\n", str2);

    printf("*******************************************************FT_STRCMP\n");
    printf("str 1 |%s|\n", str2);
    printf("str 2 |%s|\n", str2);
    if (!ft_strcmp(str1, str2))
        printf("str 1 and str 2 MATCH\n");
    else
        printf("str 1 and str 2 DOEST NOT MATCH\n");
}