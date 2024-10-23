# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pudry <pudry@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/27 09:01:54 by pudry             #+#    #+#              #
#    Updated: 2024/10/23 17:37:25 by pudry            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell
CC = gcc
INCLUDES = -I includes/ -I ft_printf/includes -I ft_printf/libft/includes -I get_next_line/includes
FLAGS = -lreadline -L$(HOME)/.brew/opt/readline/lib -Wall -Wextra -Werror -fsanitize=address
LIBFTPRINTF = ft_printf/libftprintf.a
OBJ_DIR = objet/

SRC = $(wildcard src/**/*.c)
SRC += $(wildcard src/*.c)
SRC += $(wildcard get_next_line/src/*.c)

# Création de la liste des fichiers .o correspondants dans le répertoire objet
OBJ = $(patsubst %.c, $(OBJ_DIR)%.o, $(SRC))

RESET = \\033[0m
BLUE = \\033[1;34m
WHITE = \\033[0;37m
YELLOW = \\033[0;33m
RED = \\033[1;31m
GREEN = \\033[1;32m
BRWN = \\033[0;33m
PINK = \\033[1;35m


TEXT_1   = "			              |   |  ${GREEN}C:\\> Compilation minishell             ${WHITE}|    |"
COMPIL_1 = "			              |   |  ${GREEN}C:\\>${BLUE} 10%  |██                  |100%   ${WHITE}|    |\033[F"
COMPIL_2 = "			              |   |  ${GREEN}C:\\>${BLUE} 20%  |████                |100%   ${WHITE}|    |\033[F"
COMPIL_3 = "			              |   |  ${GREEN}C:\\>${BLUE} 30%  |██████              |100%   ${WHITE}|    |\033[F"
COMPIL_4 = "			              |   |  ${GREEN}C:\\>${BLUE} 40%  |████████            |100%   ${WHITE}|    |\033[F"
COMPIL_5 = "			              |   |  ${GREEN}C:\\>${BLUE} 50%  |██████████          |100%   ${WHITE}|    |\033[F"
COMPIL_6 = "			              |   |  ${GREEN}C:\\>${BLUE} 60%  |████████████        |100%   ${WHITE}|    |\033[F"
COMPIL_7 = "			              |   |  ${GREEN}C:\\>${BLUE} 70%  |██████████████      |100%   ${WHITE}|    |\033[F"
COMPIL_8 = "			              |   |  ${GREEN}C:\\>${BLUE} 80%  |████████████████    |100%   ${WHITE}|    |\033[F"
COMPIL_9 = "			              |   |  ${GREEN}C:\\>${BLUE} 90%  |██████████████████  |100%   ${WHITE}|    |\033[F"
COMPIL_10 = "			              |   |  ${GREEN}C:\\>${BLUE} 100% |████████████████████|100%   ${WHITE}|    |"
TEXT_2   = "			              |   |  ${GREEN}C:\\> Compilation SUCCESS               ${WHITE}|    |"
TEXT_3   = "			              |   |  ${GREEN}C:\\> Starting minishell in 3 seconds   ${WHITE}|    |\033[F"
TEXT_4   = "			              |   |  ${GREEN}C:\\> Starting minishell in 2 seconds   ${WHITE}|    |\033[F"
TEXT_5   = "			              |   |  ${GREEN}C:\\> Starting minishell in 1 seconds   ${WHITE}|    |\033[F"
TEXT_6   = "			              |   |  ${RED}C:\\> Segmentation fault                ${WHITE}|    |\033[F"
EMPTY   = " 			              |   |  ${WHITE}                                       ${WHITE}|    |\033[F"
REBOOT   = "			              |   |  ${RED}C:\\> REBOOT                            ${WHITE}|    |\033[F"
TEXT_7   = "			              |   |  ${GREEN}C:\\> Starting minishell                ${WHITE}|    |"
TEXT_8   = "			              |   |  ${GREEN}C:\\> Starting minishell \033[1mSUCCESS\033[0m        ${WHITE}|    |\033[F"


all : $(NAME)

init :
	git submodule init
	git submodule update
	
run : $(NAME) header compil
	@make -C ft_printf/
	@sleep 0.5
	@echo $(COMPIL_2)
	@sleep 0.2
	@echo $(COMPIL_3)
	@sleep 0.2
	@echo $(COMPIL_4)
	@sleep 0.2
	@echo $(COMPIL_5)
	@echo $(COMPIL_6)
	@sleep 0.2
	@echo $(COMPIL_7)
	@sleep 0.2
	@echo $(COMPIL_8)
	@sleep 0.2
	@echo $(COMPIL_9)
	@sleep 1.2
	@echo $(COMPIL_10)
	@echo $(TEXT_2)
	@echo $(TEXT_3)
	@sleep 1.0
	@echo $(TEXT_4)
	@sleep 1.0
	@echo $(TEXT_5)
	@sleep 1.0
	@echo $(TEXT_6)
	@sleep 1.0
	@echo $(EMPTY)
	@sleep 0.4
	@echo $(REBOOT)
	@sleep 0.4
	@echo $(EMPTY)
	@sleep 0.4
	@echo $(REBOOT)
	@sleep 0.4
	@echo $(EMPTY)
	@sleep 0.4
	@echo $(REBOOT)
	@sleep 0.4
	@echo $(EMPTY)
	@sleep 0.4
	@echo $(REBOOT)
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@sleep 2.0
	@echo $(TEXT_1)
	@echo $(COMPIL_1)
	@echo "\033[F"
	@sleep 1.0
	@echo $(COMPIL_2)
	@sleep 0.2
	@echo $(COMPIL_3)
	@sleep 0.2
	@echo $(COMPIL_4)
	@sleep 0.2
	@echo $(COMPIL_5)
	@echo $(COMPIL_6)
	@sleep 0.2
	@echo $(COMPIL_7)
	@echo $(COMPIL_8)
	@sleep 0.2
	@echo $(COMPIL_9)
	@sleep 1.2
	@echo $(COMPIL_10)
	@echo $(TEXT_2)
	@echo $(TEXT_3)
	@sleep 1.0
	@echo $(TEXT_4)
	@sleep 1.0
	@echo $(TEXT_5)
	@sleep 0.7
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@echo "\033[F\033[F"
	@echo $(EMPTY)
	@sleep 0.5
	@echo $(TEXT_8)
	@make go_down
	./$(NAME)


$(OBJ_DIR)%.o: %.c
	@mkdir -p $(dir $@)
	@$(CC) $(FLAGS) -c -o $@ $< $(INCLUDES)


$(NAME): $(OBJ)
	@make -C ft_printf/
	@$(CC) $(FLAGS) $(OBJ) $(MLX_FLAGS) $(LIBFTPRINTF) -o $(NAME)

clean :
	@rm -rf objet/
	@make clean -C ft_printf/

fclean : clean
	@rm -f $(NAME)
	@make fclean -C ft_printf/

re : fclean all


header :
	@clear
	@echo "${BLUE}"
	@echo "			      ███    ███  ██  ███    ██  ██  ███████  ██   ██  ███████  ██       ██           "
	@echo "			      ████  ████  ██  ████   ██  ██  ██       ██   ██  ██       ██       ██           "
	@echo "			      ██ ████ ██  ██  ██ ██  ██  ██  ███████  ███████  █████    ██       ██           "
	@echo "			      ██  ██  ██  ██  ██  ██ ██  ██       ██  ██   ██  ██       ██       ██           "
	@echo "			      ██      ██  ██  ██   ████  ██  ███████  ██   ██  ███████  ███████  ███████      "
	@echo "${GREEN}"
	@echo ""
	@echo '			      ____          _ _                                       ____             _ '
	@echo '			     / ___|___  ___(_) | ___                                 |  _ \ __ _ _   _| |'
	@echo '			    | |   / _ \/ __| | |/ _ \                                | |_) / _` | | | | |'
	@echo '			    | |__|  __/ (__| | |  __/                                |  __/ (_| | |_| | |'
	@echo '			     \____\___|\___|_|_|\___|                                |_|   \__,_|\__,_|_|'
	@echo ""
	@echo ""
	@echo "    ███████╗ ██████╗ ██████╗  ██████╗███████╗    ███████╗████████╗    ██╗  ██╗ ██████╗ ███╗   ██╗███╗   ██╗███████╗██╗   ██╗██████╗ "
	@echo "    ██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔════╝    ██╔════╝╚══██╔══╝    ██║  ██║██╔═══██╗████╗  ██║████╗  ██║██╔════╝██║   ██║██╔══██╗"
	@echo "    █████╗  ██║   ██║██████╔╝██║     █████╗      █████╗     ██║       ███████║██║   ██║██╔██╗ ██║██╔██╗ ██║█████╗  ██║   ██║██████╔╝"
	@echo "    ██╔══╝  ██║   ██║██╔══██╗██║     ██╔══╝      ██╔══╝     ██║       ██╔══██║██║   ██║██║╚██╗██║██║╚██╗██║██╔══╝  ██║   ██║██╔══██╗"
	@echo "    ██║     ╚██████╔╝██║  ██║╚██████╗███████╗    ███████╗   ██║       ██║  ██║╚██████╔╝██║ ╚████║██║ ╚████║███████╗╚██████╔╝██║  ██║"
	@echo "    ╚═╝      ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚══════╝    ╚══════╝   ╚═╝       ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝"
	@echo "${WHITE}"

	
compil:
	@echo "			                ________________________________________________"
	@echo "			               /                                                \\"
	@echo "			              |    _________________________________________     |"
	@echo "			              |   |                                         |    |"
	@echo $(TEXT_1)
	@echo $(COMPIL_1)
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |                                         |    |"
	@echo "			              |   |_________________________________________|    |"
	@echo "			              |                                                  |"
	@echo "			               \\_________________________________________________/"
	@echo "			                      \\___________________________________/"
	@echo "			                   ___________________________________________"
	@echo "			                _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- \`-_"
	@echo "			             _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.\`-_"
	@echo "			          _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-\`__\`. .-.-.-.\`-_"
	@echo "			       _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.\`-_"
	@echo "			    _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.\`-_"
	@echo "			   :-------------------------------------------------------------------------:"
	@echo "			   \`---._.-------------------------------------------------------------._.---'"
	@echo ""
	@make go_back

go_back:
	@echo "\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F\033[F"

go_down:
	@echo "\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E\033[E"




.PHONY : fclean re all header clean go_back go_down compile run init


