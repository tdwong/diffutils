//https://github.com/esmil/musl/blob/master/src/dirent/alphasort.c

#include <string.h>
#include <dirent.h>
///#include "libc.h"

int alphasort(const struct dirent **a, const struct dirent **b)
{
	return strcoll((*a)->d_name, (*b)->d_name);
}
