//
//  Box.m
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Box.h"

@implementation Box

@synthesize height;

-(id)init {
    self = [super init];
    length = 1.0;
    breadth = 1.0;
    return self;
}

-(double) volume {
    return length * breadth * height;
}

@end
