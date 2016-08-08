//
//  Sweater.m
//  Day03
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater

- (instancetype)initWithSweaterType:(SweaterType)type {
    if ((self = [super init])) {
        _type = type;
    }
    return self;
}

- (NSString *)description {
    switch (_type) {
        case SweaterTypeBlue:
            return @"Blue Sweater";
        case SweaterTypeGray:
            return @"Gray Sweater";
    }
}

- (void)dealloc {
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self);
}

@end
