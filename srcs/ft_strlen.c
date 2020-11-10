/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vde-melo <vde-melo@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/21 14:09:39 by vde-melo          #+#    #+#             */
/*   Updated: 2020/11/10 18:17:19 by vde-melo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"

size_t		ft_strlen(const char *str)
{
	size_t	len;
	char	*str1;

	str1 = (char *)str;
	len = 0;
	while (*str1)
	{
		str1++;
		len++;
	}
	return (len);
}
