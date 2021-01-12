# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mg <mg@student.42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/04 12:03:56 by mg                #+#    #+#              #
#    Updated: 2021/01/11 19:46:50 by mg               ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a
CC		= clang-9

SRCS	=	./srcs/ft_bzero.s \
			./srcs/ft_calloc.s \
			./srcs/ft_memalloc.s \
			./srcs/ft_memcpy_rev.s \
			./srcs/ft_memcpy.s \
			./srcs/ft_memmove.s \
			./srcs/ft_memset.s \
			./srcs/ft_read.s \
			./srcs/ft_strcmp.s \
			./srcs/ft_strcpy.s \
			./srcs/ft_strdup.s \
			./srcs/ft_strlen.s \
			./srcs/ft_strnew.s \
			./srcs/ft_write.s \
			./srcs_bonus/ft_atoi_base.s \
			./srcs_bonus/ft_create_elem.s \
			./srcs_bonus/ft_isalnum_base.s \
			./srcs_bonus/ft_isdigit.s \
			./srcs_bonus/ft_islower.s \
			./srcs_bonus/ft_isspace.s \
			./srcs_bonus/ft_isupper.s \
			./srcs_bonus/ft_list_push_front.s \
			./srcs_bonus/ft_list_remove_if.s \
			./srcs_bonus/ft_list_size.s \
			./srcs_bonus/ft_list_sort.s \

OBJS	= $(SRCS:.s=.o)

%.o:		%.s
		nasm -f elf64 $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

clean: 
	@/bin/rm -f ./srcs/ft*.o
	@/bin/rm -f ./srcs_bonus/ft*.o

fclean: clean
	@/bin/rm -f ./libasm.a
	@/bin/rm -f ./libasm.out

test:
	@$(CC) ./tester_mgiraldo/main.c -L ./ -lasm -o libasm.out -g
	@./libasm.out
#	clang-9 main.c libasm.a

re: fclean all

bonus: re