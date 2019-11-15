NAME=Sully

SRC=$(NAME).s

all:
	nasm -f macho64 $(SRC)
	gcc $(SRC:.s=.o) -o $(NAME)

clean:
	rm -f $(SRC:.s=.o)
	rm -f Sully_*

fclean: clean
	rm -f $(NAME)

re: flcean all

exec: all
	./$(NAME)
