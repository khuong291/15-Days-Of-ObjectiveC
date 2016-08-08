//
//  Person.h
//  Day03
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Sweater;
#import "Sweater.h"

@interface Person : NSObject

@property (nonatomic, strong) Sweater *sweater;
@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;
- (NSString *)quote;

@end
