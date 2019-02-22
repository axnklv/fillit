# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: elchrist <elchrist@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/21 22:00:14 by elchrist          #+#    #+#              #
#    Updated: 2019/02/22 23:17:56 by elchrist         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
SRC = main.c \
	solving.c \
	placing.c \
	validation.c \
	reading.c \
	functions.c \
	list_functions.c
OBJ = $(SRC:.c=.o)
# SRC = $(wildcard *.c)
# OBJ = $(patsubst %.c,%.o,$(wildcard *.c))
FLAGS = -Wall -Wextra -Werror
HEADER = -I fillit.h
LIBFT = libft/
LIBINCLUDES = -I /libft/includes

all: $(NAME)

$(NAME):
	make -C $(LIBFT)
	gcc  -o $(NAME) $(FLAGS) $(SRC) $(HEADER) $(LIBINCLUDES) -L $(LIBFT) -lft

clean:
	make -C libft/ clean
	rm -f $(OBJ)

fclean:
	make -C libft/ fclean
	rm -f $(NAME)

re: fclean all
