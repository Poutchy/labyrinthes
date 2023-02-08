
/*** MEMORY.C ***/

#include <ruby.h>
#include <stdio.h>
#include <stdlib.h>  /* malloc() */

#include "vdefs.h"

static char** memory_map;
static int nallocs = 0;

void
freeinit(Freelist * fl, int size)
{
    fl->head = (Freenode *)NULL ;
    fl->nodesize = size ;
}

char *
getfree(Freelist * fl)
{
    int i ;
    Freenode * t ;
    if (fl->head == (Freenode *)NULL)
    {
        t =  (Freenode *) myalloc(rubyvorState.sqrt_nsites * fl->nodesize) ;
        for(i = 0 ; i < rubyvorState.sqrt_nsites ; i++)
        {
            makefree((Freenode *)((char *)t+i*fl->nodesize), fl) ;
        }
    }
    t = fl->head ;
    fl->head = (fl->head)->nextfree ;
    return ((char *)t) ;
}

void
makefree(Freenode * curr, Freelist * fl)
{
    curr->nextfree = fl->head ;
    fl->head = curr ;
}

int total_alloc;

void
update_memory_map(char * newp)
{
    if (nallocs % 1000 == 0)
	{
		if (nallocs == 0)
			memory_map = (char **)malloc((nallocs+1000)*sizeof(char*));
		else
			memory_map = (char **)realloc(memory_map,(nallocs+1000)*sizeof(char*));
	}
	memory_map[nallocs++] = newp;
}

char *
myalloc(unsigned n)
{
    char * t;
    
    if ((t=(char*)malloc(n)) == (char *) 0)
        rb_raise(rb_eNoMemError, "Insufficient memory processing site %d (%d bytes in use)\n", rubyvorState.siteidx, total_alloc);

    total_alloc += n;
    
    update_memory_map(t);
    return (t);
}

char *
myrealloc(void * oldp, unsigned n, unsigned oldn)
{
    char * newp;
    int i;
    
    if ((newp=(char*)realloc(oldp, n)) == (char *) 0)
        rb_raise(rb_eNoMemError, "Insufficient memory processing site %d (%d bytes in use)\n", rubyvorState.siteidx, total_alloc);

    total_alloc += (n - oldn);

    update_memory_map(newp);

    /*
     * Mark oldp as freed, since free() was called by realloc.
     *
     * TODO: this seems naive; measure if this is a bottleneck & use a hash table or some other scheme if it is.
     */
    for (i=0; i<nallocs; i++)
    {
        if (memory_map[i] != (char*)0 && memory_map[i] == oldp)
        {
            memory_map[i] = (char*)0;
            break;
        }
    }
    
    return (newp);
}
    

void free_all(void)
{
	int i;
	for (i=0; i<nallocs; i++)
	{
		if (memory_map[i] != (char*)0)
		{
			free(memory_map[i]);
			memory_map[i] = (char*)0;
		}
	}
	free(memory_map);
	nallocs = 0;
}
