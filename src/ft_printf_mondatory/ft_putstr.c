/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mabdelou <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/08/23 10:26:20 by mabdelou          #+#    #+#             */
/*   Updated: 2021/11/29 17:06:25 by mabdelou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../lib/ft_printf.h"

int	ft_putstr(char	*str)
{
	int	a;

	a = 0;
	if (!str)
		return (write(1, "(null)", 6));
	while (str[a] != '\0')
		a += ft_putchar(str[a]);
	return (a);
}
