#ifndef _MDLOOKUP_H_
#define _MDLOOKUP_H_

#include <sqlite3.h>
#include <stdio.h>
#include <string.h>

void stop_database(void);
void start_database(const char *dbfile);
int  lookup(const char *fname, const char *mi, const char *lname);

#endif /* _MDLOOKUP_H_ */