#include <iostream>
#include <w32api/psdk_inc/_ip_types.h>
#include "prints.h
#include <netinet/in.h>
#include <cstdlib>
#include <sys/socket.h>
#include <unistd.h>
#include <cstdio>
#include <cstring>
#include <cygwin/in.h>

static const int DEF_PROTOCOL = 0;
static const char UPLOAD_TYPE = 'u';
static const char SERVER_TYPE = 's';
static const char DOWNLOAD_TYPE = 'd';
static const int TYPE_ARGV_LOC = 1;
static const int TYPE_LETTER_LOC = 1;
static const int SERVER_DIR_ARGV_LOC = 2;
static const int PORT_NUM_ARGV_LOC = 3;
static const int MAX_NUM_CLIENTS = 3;
typedef struct sockaddr_in sockaddr_in;
typedef struct hostnet hostnet;

#define MAXHOSTNAME 80
using namespace std;

void error(const string &msg)
{
	cout << msg << endl;
	exit(1);
}

int establish(unsigned short portnum)
{
	char myname[MAXHOSTNAME + 1];
	int fd;
	sockaddr_in sa = NULL;
	hostnet *hp = nullptr;
	// hostnet initialization
	gethostname(myname, MAXHOSTNAME);
	hp = gethostbyname(myname);
	if (hp == nullptr)
	{
		return -1;
	}
	// sockaddr_in initialization
	memset(&sa, 0, sizeof(struct sockaddr_in));
	sa.sin_family = hp->h_addrtype;
	// This is our host address
	memcpy(&sa.sin_addr, hp->h_addr, hp->h_length);
	// This is our port number
	sa.sin_port = htons(portnum);

	// Create socket
	if ((fd = socket(AF_INET, SOCK_STREAM, DEF_PROTOCOL)))
	{
		return -1;
	}

	if (bind(fd, (sockaddr *) &sa, sizeof(sockaddr_in)) < 0)
	{
		close(fd);
		return -1;
	}

	listen(fd, 3);    // Max # of queued connects
	return fd;
}

int get_connection(int s)
{
	// Socket of connection
	int t;

	if ((t = accept(s, NULL, NULL)) < 0)
	{
		return -1;
	}
	return t;
}

int call_socket(char *hostname, unsigned short portnum)
{
	struct sockaddr_in sa;
	struct hostnet *hp;
	int s;

	if ((hp = gethostbyname(hostname)) == NULL)
	{
		return -1;
	}
	memset(&sa, 0, sizeof(sa));
	memcpy((char *) &sa.sin_addr, hp->h_addr, hp->h_length);
	sa.sin_family = hp->h_addrtype;
	sa.sin_port = htons((u_short) portnum);

	if ((s = socket(hp->h_addrtype, SOCK_STREAM, 0)) < 0)
	{
		return -1;
	}

	if (connect(s, (struct sockaddr *) &sa, sizeof(sa)) < 0)
	{
		close(s);
		return -1;
	}

	return s;
}

int read_data(int s, char *buf, int n)
{
	int bcount;    // Counts bytes read
	int br;        // Bytes read this pass
	bcount = 0;
	br = 0;

	// Loop until full buffer
	while (bcount < n)
	{
		br = read(s, buf, bcount);
		if ((br > 0))
		{
			bcount += br;
			buf += br;
		}
		if (br < 1)
		{
			return -1;
		}
	}
	return bcount;
}

int main()
{
	std::cout << "Hello, World!" << std::endl;
	return 0;
}

int createSocket()
{
	int sockfd;
	// Create socket
	if ((sockfd = socket(AF_INET, SOCK_STREAM, DEF_PROTOCOL)) < 0)
	{
		error("Err: While opening socket.");
	}
	return sockfd;
}

int bindAddr(int sockfd, uint16_t portnum)
{
	sockaddr_in sa = NULL;
	sa.sin_family = AF_INET;
	sa.sin_port = htons(portnum);
	sa.sin_addr.s_addr = INADDR_ANY;
	memset(&(sa.sin_zero), '\0', sizeof(sockaddr_in));
	if (bind(sockfd, (sockaddr *) &sa, sizeof(sockaddr_in)) < 0)
	{
		error("Err: While binding.");
	}

}

void listenToClient(int sockfd)
{
	listen(sockfd, MAX_NUM_CLIENTS);
}

void callServer(int argc, char *argv[])
{
	string serverDir = argv[SERVER_DIR_ARGV_LOC];
	auto portNum = atoi(argv[PORT_NUM_ARGV_LOC]);
	int sockfd = createSocket();
	bindAddr(sockfd, portNum);
	listenToClient(sockfd);
}

def callUpload(int argc, char *argv[]);

def callDownload(int argc, char *argv[]);

int main(int argc, char *argv[])
{
	if (argc < 2)
	{
		error("Err: No port provided.");
	}
	int callType = argv[TYPE_ARGV_LOC][TYPE_LETTER_LOC];
	if (callType == SERVER_TYPE)
	{
		callServer(argc, argv);
	}
	if (callType == UPLOAD_TYPE)
	{
		callUpload(argc, argv);
	}
	if (callType == DOWNLOAD_TYPE)
	{
		callDownload(argc, argv);
	}
}