//
//  main.m
//  PostgresqlInterfaceTest
//
//  Created by Kiyoshi Nagahama on 10/27/14.
//  Copyright (c) 2014 Digital Bytes Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <libpq-fe.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        const char *conninfo;
        PGconn     *conn;
        PGresult   *res;
        int         nFields;
        int         i,
                    j;
        
        
        conninfo = "host=192.168.1.185 port=5432 dbname=postgres user=postgres password=root";
        conn = PQconnectdb(conninfo);
        
        if (PQstatus(conn) != CONNECTION_OK)
        {
            fprintf(stderr, "Connection to database failed: %s",
                    PQerrorMessage(conn));
        }
        
        int version = PQserverVersion(conn);
        printf("Server version ... %i\n", version);
        
    }
    return 0;
}
