#ifndef _SECDESK_H_
#define _SECDESK_H_

#include <stdlib.h>
#include <string.h>

#include "fio.h"
#include "fio_cli.h"
#include "http.h"

#include "mdlookup.h"
#include "imageproc.h"

struct secinput {
  FIOBJ fname;
  FIOBJ mi;
  FIOBJ lname;
  FIOBJ filename;
  FIOBJ filedata;
};

#endif /* _SECDESK_H_ */
