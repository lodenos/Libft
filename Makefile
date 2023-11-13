# https://makefiletutorial.com

NAME = libft.a

COMPILER = cc
CFLAGS = -Wall -Wextra -Werror -std=c99

INCLUDE = libft.h

SOURCES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
  ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c \
  ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
  ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c \
  ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c \
  ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c \
  ft_substr.c ft_tolower.c ft_toupper.c

SOURCES_BONUS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c \
  ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c \
  ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

OBJS = $(patsubst %.c, %.o, $(SOURCES))
OBJS_BONUS = $(patsubst %.c, %.o, $(SOURCES_BONUS))

all: $(NAME)

$(NAME): $(OBJS)
	@ar rc $(NAME) $(OBJS)

%.o: %.c $(INCLUDE)
	$(CC) $(CFLAGS) -c $< -o $@

bonus: $(OBJS) $(OBJS_BONUS)
	ar rc $(NAME) $(OBJS) $(OBJS_BONUS)

clean:
	@rm -f $(OBJS)

fclean: clean
	@rm -f $(NAME)

re: fclean
	@make

.PHONY: all clean fclean re
