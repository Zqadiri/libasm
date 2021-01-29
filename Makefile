# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zqadiri <zqadiri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:54:47 by zqadiri           #+#    #+#              #
#    Updated: 2021/01/29 17:09:30 by zqadiri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s ft_read.s

OBJ = ft_strcmp.o ft_strcpy.o ft_strdup.o ft_strlen.o ft_write.o ft_read.o

all: $(NAME)

# adds include directory of header files
# f option Specify the Output File Format 
# o option Specify the Output File Name
# nasm is an assembler a program for converting
# instructions written in low-level symbolic code into machine code.
#  macho64 short for Mach object file format is a file format for executables, 
# object code, shared libraries ...

$(NAME):
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o;
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o;
	nasm -f macho64 ft_strdup.s -o ft_strdup.o;
	nasm -f macho64 ft_strlen.s -o ft_strlen.o;
	nasm -f macho64 ft_read.s   -o ft_read.o;
	nasm -f macho64 ft_write.s  -o ft_write.o;
	ar -rsc $(NAME) $(OBJ) && ranlib $(NAME)

try: all
	@touch test
	@gcc -Wall -Wextra -Werror -I ./libasm.h libasm.a main.c -o try_libasm
	./try_libasm

re: fclean $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)