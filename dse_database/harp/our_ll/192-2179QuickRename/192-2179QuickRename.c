#include <stdio.h>
#include <dirent.h>
#include <string.h>

static const char* const FILE_TYPE = ".xwm";
static const int MAX_FILES = 111;

/* returns 0 (false) if over 111, o.w. 1 (true) */
char incrementName(char new_name[], int* file_count)
{
    (*file_count)++;
    if (*file_count > MAX_FILES)
        return 0;

    if (*file_count % 100 == 0)
    {
        new_name[3]++;
        new_name[4] = '0';
        new_name[5] = '0';
    }
    else if (*file_count % 10 == 0)
    {
        new_name[4]++;
        new_name[5] = '0';
    }
    else
        new_name[5]++;

    return 1;
}

/* returns num from valid MUS name or 0 if invalid */
char getNameVal(char name[])
{
    if (strlen(name) == 10 && name[0] == 'M' &&
        name[1] == 'U' && name[2] == 'S' &&
        name[3] >= '0' && name[3] <= '9' &&
        name[4] >= '0' && name[4] <= '9' &&
        name[5] >= '0' && name[5] <= '9')
    {
        return ((name[3] - 48) * 100) +
                ((name[4] - 48) * 10) +
                (name[5] - 48);
    }

    return 0;
}

/* changes file names if they have valid type */
int main()
{
    DIR* dir_ptr;

    if ((dir_ptr = opendir("./")))
    {
        struct dirent* entry_ptr;
        char* cur_file_type;
        int cur_name_val;
        char new_name[] = "MUS001.xwm";
        int file_count = 1;
        char files_valid = 1;
        FILE *fp = fopen("log.txt", "a");

        if(fp == NULL)
        {
            printf("ERROR: Can not write to log.txt\n");
            return 1;
        }

        /* loop through all files in the current directory */
        while ((entry_ptr = readdir(dir_ptr)) && files_valid)
        {
            /* check if file is of valid type */
            cur_file_type = strrchr(entry_ptr->d_name, '.');
            if (cur_file_type && !strcmp(cur_file_type, FILE_TYPE))
            {
                /* check if valid file is already named correctly */
                if ((cur_name_val = getNameVal(entry_ptr->d_name)) == 0)
                {
                    /* rename with the next name, if already taken continue with next */
                    while (rename(entry_ptr->d_name, new_name) && files_valid)
                    {
                        files_valid = incrementName(new_name, &file_count);
                    }
                    if (files_valid)
                    {
                        fprintf(fp, "Renamed %s to %s\n", entry_ptr->d_name, new_name);
                        files_valid = incrementName(new_name, &file_count);
                    }
                }
                else if (cur_name_val == file_count)
                {
                    files_valid = incrementName(new_name, &file_count);
                }
            }
        }

        fprintf(fp, "\n%d files ready\n\n", file_count - 1);
    }

    return 0;
}
