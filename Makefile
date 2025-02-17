NAME	= libft.a

SRC = ft_atoi.c ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_isascii.c \
	ft_isprint.c ft_strlen.c ft_tolower.c ft_toupper.c \
	ft_strchr.c ft_strrchr.c ft_bzero.c ft_strncmp.c ft_strdup.c ft_strnstr.c \
	ft_memcpy.c ft_memcmp.c ft_strlcat.c ft_calloc.c ft_memset.c ft_strlcpy.c \
	ft_substr.c ft_strjoin.c  ft_itoa.c ft_putnbr_fd.c ft_putendl_fd.c \
	ft_putstr_fd.c ft_putchar_fd.c ft_split.c ft_memmove.c ft_memchr.c \
	ft_strtrim.c ft_strmapi.c ft_striteri.c

BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstiter.c \
	ft_lstlast.c ft_lstnew.c ft_lstsize.c \
	ft_lstclear.c ft_lstdelone.c ft_lstmap.c

OBJS = $(SRC:.c=.o) 

BONUS_OBJS = $(BONUS:.c=.o)

CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar crs

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

bonus: $(OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(BONUS_OBJS)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean
	$(RM) $(NAME)		

re:	fclean all

.PHONY:	all clean fclean re bonus
