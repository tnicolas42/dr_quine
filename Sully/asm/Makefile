NAME=Sully

SRC=$(NAME).s

all:
	nasm -f macho64 -dDECREMENT=0 $(SRC)
	gcc $(SRC:.s=.o) -o $(NAME)
	rm $(SRC:.s=.o)

clean:
	rm -f $(SRC:.s=.o)
	rm -f Sully_*

fclean: clean
	rm -f $(NAME)

re: flcean all

diff: all
	./$(NAME)
	for i in 5 4 3 2 1 0; do diff ./$(NAME)_$$i.s ./$(SRC); done;

exec: all
	./$(NAME)
