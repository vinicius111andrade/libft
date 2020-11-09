# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vde-melo <vde-melo@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/20 13:48:55 by vde-melo          #+#    #+#              #
#    Updated: 2020/11/09 15:12:39 by vde-melo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS_PATH = ./srcs/

SRC = $(SRCS_PATH)ft_atoi.c \
	  $(SRCS_PATH)ft_isalnum.c \
	  $(SRCS_PATH)ft_isalpha.c \
	  $(SRCS_PATH)ft_isascii.c \
	  $(SRCS_PATH)ft_isdigit.c \
	  $(SRCS_PATH)ft_isprint.c \
	  $(SRCS_PATH)ft_memset.c \
	  $(SRCS_PATH)ft_strlcat.c \
	  $(SRCS_PATH)ft_strlen.c \
	  $(SRCS_PATH)ft_toupper.c \
	  $(SRCS_PATH)ft_tolower.c \
	  $(SRCS_PATH)ft_bzero.c \
	  $(SRCS_PATH)ft_calloc.c \
	  $(SRCS_PATH)ft_memchr.c \
	  $(SRCS_PATH)ft_memcmp.c \
	  $(SRCS_PATH)ft_memcpy.c \
	  $(SRCS_PATH)ft_memccpy.c \
	  $(SRCS_PATH)ft_memmove.c \
	  $(SRCS_PATH)ft_strchr.c \
	  $(SRCS_PATH)ft_strrchr.c \
	  $(SRCS_PATH)ft_strdup.c \
	  $(SRCS_PATH)ft_strlcpy.c \
	  $(SRCS_PATH)ft_strncmp.c \
	  $(SRCS_PATH)ft_strnstr.c \
	  $(SRCS_PATH)ft_substr.c \
	  $(SRCS_PATH)ft_strjoin.c \
	  $(SRCS_PATH)ft_putchar_fd.c \
	  $(SRCS_PATH)ft_putstr_fd.c \
	  $(SRCS_PATH)ft_putendl_fd.c \
	  $(SRCS_PATH)ft_putnbr_fd.c \
	  $(SRCS_PATH)ft_strtrim.c \
	  $(SRCS_PATH)ft_itoa.c \
	  $(SRCS_PATH)ft_strmapi.c \
	  $(SRCS_PATH)ft_split.c

SRC_BONUS = $(SRCS_PATH)ft_lstnew.c			\
			$(SRCS_PATH)ft_lstsize.c		\
			$(SRCS_PATH)ft_lstlast.c		\
			$(SRCS_PATH)ft_lstdelone.c		\
			$(SRCS_PATH)ft_lstadd_back.c	\
			$(SRCS_PATH)ft_lstadd_front.c	\
			$(SRCS_PATH)ft_lstclear.c		\
			$(SRCS_PATH)ft_lstmap.c			\
			$(SRCS_PATH)ft_lstiter.c		\

OBJ = ${SRC:.c=.o}

OBJ_BONUS = ${SRC_BONUS:.c=.o}

all : $(NAME)

$(NAME): $(SRC) libft.h
	gcc -Wall -Wextra -Werror -I./ -c $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

bonus:
	gcc -Wall -Wextra -Werror -I./ -c $(SRC) $(SRC_BONUS)
	ar rc $(NAME) $(OBJ) $(OBJ_BONUS)
	ranlib $(NAME)

clean:
	rm -f *.o
	rm -f $(SRCS_PATH)/*.o

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY : all clean fclean re
