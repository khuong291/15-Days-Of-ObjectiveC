//
//  Person.m
//  Day03
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    if ((self = [super init])) {
        _name = name;
        _sweater = nil;
    }
    return self;
}

- (NSString *)quote {
    return [[NSString alloc] initWithFormat:@"%@ says: Gimme my sweater back!", _name];
}

- (NSString *)description {
    if (_sweater) {
        return [NSString stringWithFormat:@"%@ (wearing %@)", _name, _sweater];
    } else {
        return _name;
    }
}

- (void) dealloc {
    NSLog(@"%s %@ deallocated", __PRETTY_FUNCTION__, self); 
}

@end
