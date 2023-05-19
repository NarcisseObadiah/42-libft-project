# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mobadiah <mobadiah@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/16 12:06:05 by mobadiah          #+#    #+#              #
#    Updated: 2023/04/08 04:05:19 by mobadiah         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


SRCS			= ft_strlen.c ft_strchr.c ft_tolower.c ft_toupper.c ft_isalnum.c \
				ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_strrchr.c ft_strncmp.c \
				ft_strnstr.c ft_strlcpy.c ft_strlcat.c ft_memset.c ft_memcpy.c ft_memmove.c ft_memchr.c \
				ft_memcmp.c ft_bzero.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_putchar_fd.c \
				ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strtrim.c  ft_itoa.c ft_strmapi.c ft_striteri.c ft_split.c
OBJS			= $(SRCS:.c=.o)

BONUS		= ft_lstnew.c ft_lstsize.c ft_lstlast.c ft_lstadd_front.c ft_lstadd_back.c ft_lstclear.c ft_lstdelone.c ft_lstclear.c \
				ft_lstiter.c  ft_lstmap.c
BONUS_OBJS     = $(BONUS:.c=.o)

CC				= cc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror

NAME			= libft.a

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:
				rm -rf $(OBJS) $(BONUS_OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:         $(BONUS_OBJS)
				ar rcs $(NAME) $(BONUS_OBJS) 

.PHONY:			all bonus clean fclean re
  
