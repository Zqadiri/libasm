# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zqadiri <zqadiri@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/18 16:54:47 by zqadiri           #+#    #+#              #
#    Updated: 2020/12/19 13:51:26 by zqadiri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s 

OBJ = ft_strcmp.o ft_strcpy.o ft_strdup.o ft_strlen.o

all: $(NAME)

$(NAME):
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o;
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o;
	nasm -f macho64 ft_strdup.s -o ft_strdup.o;
	nasm -f macho64 ft_strlen.s -o ft_strlen.o;
	ar -rc $(NAME) $(OBJ) && ranlib $(NAME)

re: fclean $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)