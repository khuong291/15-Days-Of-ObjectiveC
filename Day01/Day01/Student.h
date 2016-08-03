//
//  Student.h
//  Day01
//
//  Created by Khuong Pham on 8/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Classification) {
    Bad,
    Good,
    Excellent
};

@interface Student : NSObject

@property (nonatomic) Classification classification;

-(void)setMarks:(float)mathMark physicsMark:(float)physicsMark;
-(float)getAvarageMark;
-(void)calculateAvarageMark;
-(void) getClassification;
-(void) showClassification;

@end
