#include "libasm.h"
#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>

int main()
{
	int		fd;
	int 	ret;
	char 	b[100];
	char	*str11 = "Bonjour";
	char	*str22 = "Ok";
	//char	*str3 = NULL;
	//char	str4[20];

	fd = open("text.txt", O_RDONLY);


	ret = ft_read(fd, b, 99);
	b[ret] = 0;
	printf("ret: %d\n%s\n", ret, b);
	close(fd);

	fd = open("text.txt", O_RDONLY);
	ret = ft_read(fd, b, 3);
	b[ret] = 0;
	printf("ret: %d\n%s\n", ret, b);
	close(fd);

	fflush(0);
	printf("\n\n------------------------\n\n");

	ft_write(1, "a", 1);
	printf("\n");
	ft_write(1, "Bon", 3);

	fflush(0);
	printf("\n\n------------------------\n\n");

	printf("strlen de %s = %i\n", str11, (ft_strlen(str11)));
	printf("strlen de %s = %i\n", str22, (ft_strlen(str22)));

	fflush(0);
	printf("\n\n------------------------\n\n");

	char str1[]="Hello Geeks!"; 
    char str2[] = "GeeksforGeeks"; 
    char str3[40]; 
    char str4[40]; 
    char str5[] = "GfG"; 
      
    ft_strcpy(str2, str1); 
    ft_strcpy(str3, "Copy successful"); 
    ft_strcpy(str4, str5); 
    printf ("str1: %s\nstr2: %s\nstr3: %s\nstr4: %s\n", str1, str2, str3, str4);
	
	fflush(0);
	printf("\n\n------------------------\n\n");

	printf("ret: %i\n", ft_strcmp("Geeks", "Geeks"));  
    printf("ret: %i\n", ft_strcmp("", "ABCD"));  
    printf("ret: %i\n", ft_strcmp("ABCD", ""));  
    printf("ret: %i\n", ft_strcmp("ABCD", "abcdEghe"));  
    printf("ret: %i\n", ft_strcmp("GeeksForGeeks", "GeeksForGeeks"));  
    printf("ret: %i\n", ft_strcmp("GeeksForGeeks", "GeeksForGedks"));  

	fflush(0);
	printf("\n\n------------------------\n\n");

	char *dest;
	dest = ft_strdup("Bonjour a tous");
	printf("%s\n", dest);
	dest = ft_strdup("Bonjour");
	printf("%s\n", dest);
	dest = ft_strdup("Bonjour a tous");
	printf("%s\n", dest);

	return(0);
}
