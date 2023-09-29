#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
/**
 * main - creates 5 zombie processes
 *
 * Return: 0
 */
int main(void)
{
	int i;
	pid_t pid;

	for (i = 1; i <= 5; i++)
	{
		pid = fork();

		if (pid == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			exit(0);
		}
	}
	return (0);
}
