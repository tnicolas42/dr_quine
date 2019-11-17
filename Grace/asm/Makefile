SRC=Grace.s

NAME=Grace

all:
	nasm -f macho64 $(SRC)
	gcc $(SRC:.s=.o) -o $(NAME)

clean:
	rm -f $(SRC:.s=.o)
	rm Grace_kid.s || true

fclean: clean
	rm -f $(NAME)

re: flcean all

diff: all
	./$(NAME)
	diff $(SRC) Grace_kid.s

exec: all
	./$(NAME)
