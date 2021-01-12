/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm_struct.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mg <mg@student.42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/02 22:57:56 by mg                #+#    #+#             */
/*   Updated: 2021/01/02 22:59:52 by mg               ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_STRUCT_H
# define LIBASM_STRUCT_H

typedef struct			s_list
{
	void				*data;
	struct s_list		*next;
}						t_list;

#endif