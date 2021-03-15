#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

#define TEST1 "fqwfqwfqwfqqwf"
#define TEST2 "Hello"

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char * dst, const char * src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);

char *	ft_strdup(const char *s1);

// error when file doesn't exist

int main(int argc, char const *argv[])
{
	char	*a;
	char	b[80];
	int		fd;
	int		fd2;

	fd = open("trry.txt", O_RDWR);
	fd2 = open("trry.txt", O_RDWR);

	printf("ft_strlen:\n");
	printf("MINE:\t\t|%lu|\n", ft_strlen(TEST1));
	printf("ORIGINAL:\t|%lu|\n", strlen(TEST1));

	printf("\nft_strcpy:\n");
	printf("MINE:\t\t|%s|\n", ft_strcpy(b, TEST1));
	printf("ORIGINAL:\t|%s|\n", strcpy(b, TEST1));

	printf("\nft_strcmp\n");
	printf("MINE:\t\t|%d|\n", ft_strcmp(TEST1, TEST2));
	printf("ORIGINAL:\t|%d|\n", strcmp(TEST1, TEST2));

	printf("\nft_write\n");
	printf("MINE:\t\t|%ld|\n", ft_write(fd, "Yeeeeeee", 5));
	printf("ORIGINAL:\t|%ld|\n", write(fd2, "Yeeeeeee", 5));

	printf("\nft_read\n");
	printf("MINE:\t\t|%ld|\n", ft_read(fd, b, 5));
	printf("ORIGINAL:\t|%ld|\n", read(fd2, b, 5));

	printf("\nft_strdup\n");	
	printf("MINE:\t\t|%s|\n", a = ft_strdup(TEST1));
	printf("ORIGINAL:\t|%s|\n", strdup(TEST1));
	return (0);
}