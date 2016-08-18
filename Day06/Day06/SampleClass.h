//
//  SampleClass.h
//  Day06
//
//  Created by Khuong Pham on 8/17/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

struct Books
{
    __unsafe_unretained NSString *title;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int book_id;
};

@interface SampleClass : NSObject

/* function declaration */
- (void) printBook:( struct Books) book ;

@end
