# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zqadiri <zqadiri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:54:47 by zqadiri           #+#    #+#              #
#    Updated: 2020/12/20 17:12:36 by zqadiri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s ft_read.s

OBJ = ft_strcmp.o ft_strcpy.o ft_strdup.o ft_strlen.o ft_write.o ft_read.o

all: $(NAME)

$(NAME):
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o;
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o;
	nasm -f macho64 ft_strdup.s -o ft_strdup.o;
	nasm -f macho64 ft_strlen.s -o ft_strlen.o;
	nasm -f macho64 ft_read.s -o ft_read.o;
	nasm -f macho64 ft_write.s -o ft_write.o;
	ar -rc $(NAME) $(OBJ) && ranlib $(NAME)

re: fclean $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)