//
//  Employee.h
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Employee : Person

{
    NSString *employeeEducation;
}
-(id)initWithName:(NSString *)name andAge:(NSInteger)age andEducation:(NSString *)education;
- (void)print;

@end
