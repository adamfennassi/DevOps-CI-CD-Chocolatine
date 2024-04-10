##
## EPITECH PROJECT, 2024
## Makefile
## File description:
## makefile
##

CC      	=	gcc

SRC     	=	test.c

OBJ			=	$(SRC:.c=.o)

NAME		=	unit_tests

LDLIBS		=	-lcriterion


all:			fclean $(NAME)
				./$(NAME)

$(NAME):		$(OBJ)
				$(CC) -o $(NAME) $(OBJ) $(LDLIBS)

coverage:
	@gcovr

clean:
				rm -f $(OBJ)
				rm -f *.gc*

fclean: 		clean
				rm -f $(NAME)

re:				fclean all

.PHONY:			$(NAME) all clean fclean re
