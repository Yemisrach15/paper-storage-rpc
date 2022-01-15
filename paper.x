struct addArgs_in
{	
	char author[20];
	char title[15];
	int fileLength;
	char content[1950];
	char fileName[15];
};

struct addArgs_out
{
	int id;
	string author<>;
	string title<>;
	string content<>;
};

struct detailArgs_out
{
	int id;
	string author<>;
	string title<>;
};

struct fetchArgs_out
{
	int id;
	string content<>;
};

typedef string listArgs_out<>;
typedef int detailArgs_in;
typedef int fetchArgs_in;


program ADD_PROG {
	version ADD_VERS {
		addArgs_out ADD_FILE(addArgs_in) = 1;
	} = 1;
} = 0x23451111;

program LIST_PROG {
	version LIST_VERS {
		listArgs_out LIST_FILES() = 1;
	} = 1;
} = 0x23451112;

program DETAIL_PROG {
	version DETAIL_VERS {
		detailArgs_out DETAIL_FILE(detailArgs_in) = 1;
	} = 1;
} = 0x23451113;

program FETCH_PROG {
	version FETCH_VERS {
		fetchArgs_out FETCH_FILE(fetchArgs_in) = 1;
	} = 1;
} = 0x23451114;