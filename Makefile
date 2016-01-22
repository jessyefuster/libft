# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfuster <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/23 12:47:10 by jfuster           #+#    #+#              #
#    Updated: 2015/11/26 15:08:42 by jfuster          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror

SRCS = ft_memset.c \
		ft_memcpy.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memmove.c \
		ft_memcmp.c \
		ft_memalloc.c \
		ft_bzero.c \
		ft_putchar.c \
		ft_putstr.c \
		ft_putendl.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c\
		ft_strcpy.c \
		ft_strncpy.c \
		ft_strcat.c \
		ft_strncat.c \
		ft_strlcat.c \
		ft_strcmp.c \
		ft_strncmp.c \
		ft_strdup.c \
		ft_strlen.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strstr.c \
		ft_strnstr.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isalpha.c \
		ft_isprint.c \
		ft_islower.c \
		ft_isupper.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_atoi.c \
		ft_itoa.c \
		ft_putnbr.c \
		ft_putnbr_fd.c \
		ft_strclr.c \
		ft_strequ.c \
		ft_strnequ.c \
		ft_strjoin.c \
		ft_memdel.c \
		ft_strnew.c \
		ft_strdel.c \
		ft_striter.c \
		ft_striteri.c \
		ft_strmap.c \
		ft_strmapi.c \
		ft_strsub.c \
		ft_strtrim.c \
		ft_strsplit.c
		

OBJ = $(SRCS:%.c=%.o)

all: $(NAME)

$(NAME):
	@echo "\033[0;36m          _              _          _               _        _        \033[0m"
	@echo "\033[0;36m         _\ \           /\ \       / /\            /\ \     /\ \      \033[0m"
	@echo "\033[0;36m        /\__ \          \ \ \     / /  \          /  \ \    \_\ \     \033[0m"
	@echo "\033[0;36m       / /_ \_\         /\ \_\   / / /\ \        / /\ \ \   /\__ \    \033[0m"
	@echo "\033[0;36m      / / /\/_/        / /\/_/  / / /\ \ \      / / /\ \_\ / /_ \ \   \033[0m"
	@echo "\033[0;36m     / / /            / / /    / / /\ \_\ \    / /_/_ \/_// / /\ \ \  \033[0m"
	@echo "\033[0;36m    / / /            / / /    / / /\ \ \___\  / /____/\  / / /  \/_/  \033[0m"
	@echo "\033[0;36m   / / / ____       / / /    / / /  \ \ \__/ / /\____\/ / / /         \033[0m"
	@echo "\033[0;36m  / /_/_/ ___/\ ___/ / /__  / / /____\_\ \  / / /      / / /          \033[0m"
	@echo "\033[0;36m /_______/\__\//\__\/_/___\/ / /__________\/ / /      /_/ /           \033[0m"
	@echo "\033[0;36m \_______\/    \/_________/\/_____________/\/_/       \_\/            \033[0m"
	@echo "\033[0;36m                                                                      \033[0m"
	@echo "\033[1;30mCompilation des sources...\033[0m"
	@gcc $(FLAGS) -c $(SRCS)
	@echo  "\033[1;30mCreation de la librairie...\033[0m"
	@ar -rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo  "\033[0;36mLibrairie cree avec succes\033[0m"

clean:
	@rm -f $(OBJ)
	@echo "\033[0;36mFichiers objets supprimes\033[0m"

fclean: clean
	@rm -f $(NAME)
	@echo "\033[0;36mLibrairie supprimee\033[0m"

re: fclean all

norme:
	@norminette $(SRCS)

push:
	git add -A
	git commit -m "modif"
	git push
