//
//  SampleClass.m
//  Day06
//
//  Created by Khuong Pham on 8/17/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

- (void) printBook:( struct Books) book
{
    NSLog(@"Book title : %@\n", book.title);
    NSLog(@"Book author : %@\n", book.author);
    NSLog(@"Book subject : %@\n", book.subject);
    NSLog(@"Book book_id : %d\n", book.book_id);
}

@end
