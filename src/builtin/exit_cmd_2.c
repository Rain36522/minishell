/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   exit_cmd_2.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pudry <pudry@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/30 16:12:01 by cduffaut          #+#    #+#             */
/*   Updated: 2023/12/08 11:13:59 by pudry            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minishell.h"
#include "header_builtin.h"

void	too_many_args(char **tab)
{
	tab = ft_free_array(tab);
	ft_putstr_fd("Error: too many arguments\n", 2);
	errno = 1;
}

void	numeric_argument_required(char **tab)
{
	tab = ft_free_array(tab);
	ft_putstr_fd("Error: numeric argument required\n", 2);
	exit (255);
}
