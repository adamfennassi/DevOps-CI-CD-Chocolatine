##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## makefile
##

CC			=	gcc

SRC			=	main.c

OBJ			=	$(SRC:.c=.o)

NAME		=	binaire

$(NAME):	 $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

all:	$(NAME)

tests_run:
	make -C tests/

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	make fclean -C ./tests

re:	fclean all

.PHONY:	$(NAME) all clean fclean
