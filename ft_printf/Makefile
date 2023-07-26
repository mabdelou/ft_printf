CC = gcc 

CFLAGS = -Wall -Werror -Wextra

RM = rm -f

NAME = libftprintf.a

FILES = ft_putadresshex.c ft_putstr.c ft_putchar.c ft_putuphex.c \
        ft_print_nb.c ft_putdownhex.c ft_printf.c ft_read_hex.c \
		ft_putnbr.c ft_unsigned_putnbr.c

OBJECTS = $(FILES:.c=.o)

all : $(NAME)

$(NAME) : $(FILES)
	$(CC) $(CFLAGS) -c $(FILES)
	ar -rc $(NAME) $(OBJECTS)

clean :
	$(RM) $(OBJECTS) $(B_OBJECTS)

fclean : clean
	$(RM) $(NAME)

re :fclean all

.PHONY : all clean fclean re bonus 
	
