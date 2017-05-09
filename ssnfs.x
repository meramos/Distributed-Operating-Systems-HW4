struct open_input
{
  char user_name[10];
  char file_name[10];
};
struct open_output
{
  int fd;
};



struct read_input
{
  char user_name[10];
  int fd;
  int numbytes;
};

struct read_output
{
  char out_msg<>;
};

struct write_input
{
  char user_name[10];
  int fd;
  int numbytes;
  char buffer<>;
};

struct write_output
{
  char out_msg<>;
};

struct list_input
{
  char user_name[10];
};

struct list_output
{
  char out_msg<>;
};

struct delete_input
{
  char user_name[10];
  char file_name[10];
};

struct delete_output
{
   char out_msg<>;
}; 

struct close_input
{
int fd;
};
struct close_output
{
   char out_msg<>;
};

program SSNFSPROG{
  version SSNFSVER{
    open_output open_file(open_input) = 1;
    read_output read_file(read_input) = 2;
    write_output write_file(write_input) = 3;
    list_output list_files(list_input) = 4; 
    delete_output delete_file(delete_input) = 5;
    close_output  close_file(close_input) = 6;
  } = 1;
}=0x31147723;