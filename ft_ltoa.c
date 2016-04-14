/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ltoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jfuster <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/28 17:05:00 by jfuster           #+#    #+#             */
/*   Updated: 2015/11/30 09:31:56 by jfuster          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libft.h"
#include <limits.h>

static int	ft_isnegative(int n)
{
	if (n < 0)
		return (1);
	return (0);
}

static int	ft_len(long n)
{
	long len;

	len = 0;
	if (n == 0)
		len = 1;
	while (n > 0)
	{
		n /= 10;
		len++;
	}
	return (len);
}

char		*ft_ltoa(long n)
{
	int		len;
	int		sign;
	char	*str;

	if (n == LONG_MIN)
		return (ft_strdup("-9223372036854775808"));
	sign = ft_isnegative(n);
	if (n < 0)
		n = -n;
	len = ft_len(n);
	len += sign;
	str = (char *)malloc(sizeof(char) * (len + 1));
	str[len] = '\0';
	while (len > 0)
	{
		str[len - 1] = (n % 10) + '0';
		n /= 10;
		len--;
	}
	if (sign == 1)
		str[0] = '-';
	return (str);
}
