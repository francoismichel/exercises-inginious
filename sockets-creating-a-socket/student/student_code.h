#include <unistd.h>
#include <sys/socket.h>
#include <arpa/inet.h>

/*
 * This function should return -1 if something went wrong.
 */

int create_and_send_message(const struct sockaddr *dest_addr, socklen_t addrlen);
