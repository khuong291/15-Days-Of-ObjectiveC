//
//  Sweater.h
//  Day03
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;

typedef NS_ENUM(unsigned char, SweaterType) {
    SweaterTypeGray,
    SweaterTypeBlue
};

@interface Sweater : NSObject

@property (assign) SweaterType type;
@property (nonatomic, weak) Person *person;

- (instancetype)initWithSweaterType:(SweaterType)type;

@end
