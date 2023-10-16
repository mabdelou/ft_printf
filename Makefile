CC := gcc 
CFLAGS := -Wall -Werror -Wextra
RM := rm -rf
OBJ_PATH := $(shell mkdir -p obj ; echo "obj/")
FILES_PATH := src/ft_printf_mondatory/
NAME := libftprintf.a
FILES = $(shell ls $(FILES_PATH) | grep ".c$$")
OBJECTS = $(patsubst %.c,$(OBJ_PATH)%.o,$(notdir $(FILES)))
FILES = $(addprefix $(FILES_PATH), $(shell ls $(FILES_PATH) | grep ".c$$"))

all : $(OBJ_PATH) $(OBJECTS)

$(OBJ_PATH)%.o : $(FILES_PATH)%.c
	$(CC) $(CFLAGS) -c -o $@ $<
	ar -rc $(NAME) $@

$(OBJ_PATH):
	mkdir -p obj
clean :
	$(RM) $(OBJ_PATH)

fclean : clean
	$(RM) $(NAME)

re :fclean all

.PHONY : all clean fclean re bonus 
	
