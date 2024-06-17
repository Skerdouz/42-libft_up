NAME =		libft.a
CC =		cc
AR =		ar rcs
CFLAGS =	-Wall -Wextra -Werror
INCLUDES =	-Iinclude

##########	SRCS	##########

#
#	MANDATORY
#
SRC_DIR =	src/
SRC_FILES =	ft_atoi ft_bzero ft_calloc ft_isalnum ft_isalpha \
		ft_isascii ft_isdigit ft_isprint ft_itoa ft_memchr \
		ft_memcmp ft_memcpy ft_memmove ft_memset ft_putchar_fd \
		ft_putendl_fd ft_putnbr_fd ft_putstr_fd ft_split \
		ft_strchr ft_strdup ft_striteri ft_strjoin \
		ft_strlcat ft_strlcpy ft_strlen ft_strmapi ft_strnstr \
		ft_strrchr ft_strtrim ft_substr ft_tolower ft_toupper \
		ft_strncmp

#
#	BONUS
#
SRC_FILES +=	ft_lstadd_back_bonus ft_lstadd_front_bonus \
		ft_lstclear_bonus ft_lstdelone_bonus ft_lstiter_bonus \
		ft_lstlast_bonus ft_lstmap_bonus ft_lstnew_bonus \
		ft_lstsize_bonus
#
#	GNL
#
SRC_FILES +=	get_next_line_bonus get_next_line_utils_bonus


SRCS =	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJS	=	$(SRCS:.c=.o)


%.o: %.c
	@$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@


$(NAME):$(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "Libft|	compiled ✅"

all:	$(NAME)

clean:
	@rm -f $(OBJS)
	@echo "Libft|	Cleaned ✅"

fclean:	clean
	@rm -f $(NAME)
	@echo "Libft|	Static library ✅"

re:		fclean all

.PHONY: all clean fclean re bonus