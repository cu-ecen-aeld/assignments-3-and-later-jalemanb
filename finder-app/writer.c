#include <syslog.h>
#include <stddef.h>
#include <stdio.h>


int main(int argc, char* argv[])
{
    openlog(NULL, 0, LOG_USER);

    if (argc != 3)
    {
        syslog(LOG_ERR, "Failed expected two arguments");
        return 1;
    }

    FILE *fptr;
    char *filename;
    char *text;

    filename = argv[1];
    text = argv[2];
    
    fptr = fopen(filename, "w");

    if(fptr == NULL)
    {
        syslog(LOG_ERR, "Failed to create File!");   
        return 1;            
    }

    syslog(LOG_DEBUG, "Writing <string> to <file>");
    fprintf(fptr, text);
    fclose(fptr);

    return 0;
}