#include <common/mavlink.h> 
#include <unistd.h>
#include <string.h>
#include <stdio.h> 

#define SIZE 10000 

int main() { 
    char data[SIZE] = {0};
    ssize_t length; 
    length = read(STDIN_FILENO, data, SIZE);
    mavlink_message_t msg;
    mavlink_status_t status; 

    for(size_t i = 0;i < input ; ++i){
        //Parse the byte 
        if(mavlink_parse_char(MAVLINK_COMM_0, data[i], &msg, &status)){
            //successfully parsed a message
            // you can add additional processing here 
        }
    }

}