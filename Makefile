NAME = libasm.a

SRCS =	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s	\
		ft_read.s	\
		ft_strdup.s

OBJS = $(SRCS:.s=.o)

%.o	: %.s
	nasm -f elf64 $< -o $@

$(NAME): $(OBJS) 
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	rm -f $(OBJS)

try: all
	@touch test
	@echo "Ceci est un test" > test
	gcc -Wall -Wextra -Werror main.c libasm.a 

fclean: clean
	rm -f $(NAME)
	rm -f try_libasm
	rm -f test

re: fclean all
