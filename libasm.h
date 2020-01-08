/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mcraipea <mcraipea@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/08 12:37:36 by mcraipea          #+#    #+#             */
/*   Updated: 2020/01/08 17:18:27 by mcraipea         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>

int		ft_strlen(const char *str);
char	*ft_strdup(const char *s1);
char	*ft_strcpy(char *s1, char *s2);
char	ft_strcmp(char *s1, char *s2);
int		ft_read(int fd, void *buf, int count);
int		ft_write(int fd, const void *buf, int count);

#endif
