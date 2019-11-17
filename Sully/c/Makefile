SRC=Sully.c

NAME=Sully

all:
	gcc $(SRC) -o $(NAME) -Wall -Wextra -Werror -DDECREMENT=0

clean:
	rm -f $(SRC:.c=.o)
	rm -f Sully_*

fclean: clean
	rm -f $(NAME)

re: flcean all

diff: all
	./$(NAME)
	for i in 5 4 3 2 1 0; do diff ./$(NAME)_$$i.c ./$(SRC); done;

exec: all
	./$(NAME)
