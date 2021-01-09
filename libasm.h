/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/02 20:59:15 by mg                #+#    #+#             */
/*   Updated: 2021/01/08 19:08:33 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <string.h>
# include <unistd.h>
# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <errno.h>
# include "libasm_struct.h"

/*
** LIBASM FUNCTIONS
*/

ssize_t ft_read(int fildes, void *buf, size_t nbyte);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dst, const char *src);
size_t	ft_strlen(const char *s);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);
char    *ft_strdup(const char *s1);

/*
** LIBASM BONUS FUNCTIONS
*/

void	ft_cat(int fildes);
int		ft_list_size(t_list *lst);
int		ft_list_push_front(t_list **begin_list, void *data);
void	ft_list_sort(t_list **begin_list, int (*cmp)());
void	ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)());
int		ft_atoi_base(char *str, char *base);

#endif
