//
//  DBManager.m
//  Day12
//
//  Created by Khuong Pham on 8/21/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "DBManager.h"
#import <sqlite3.h>

@interface DBManager()

@property (nonatomic, strong) NSString *documentsDirectory;
@property (nonatomic, strong) NSString *databaseFilename;

-(void)copyDatabaseIntoDocumentsDirectory;

@end

@implementation DBManager

-(instancetype)initWithDatabaseFilename:(NSString *)dbFilename {
    self = [super init];
    if (self) {
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        self.documentsDirectory = [paths objectAtIndex:0];

        self.databaseFilename = dbFilename;

        [self copyDatabaseIntoDocumentsDirectory];
    }
    return self;
}

-(void)copyDatabaseIntoDocumentsDirectory {
    NSString *destinationPath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseFilename];
    if (![[NSFileManager defaultManager] fileExistsAtPath:destinationPath]) {
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:self.databaseFilename];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];

        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}

@end
