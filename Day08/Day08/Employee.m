//
//  Employee.m
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (id)initWithName:(NSString *)name andAge:(NSInteger)age
      andEducation: (NSString *)education
{
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

- (void)print
{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %ld", personAge);
    NSLog(@"Education: %@", employeeEducation);
}

@end
