//
//  Student.m
//  Day01
//
//  Created by Khuong Pham on 8/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Student.h"

@implementation Student {
    float _mathMark;
    float _physicsMark;
    float _avarageMark;
    Classification _classification;
}

-(void)setMarks:(float)mathMark physicsMark:(float)physicsMark {
    _mathMark = mathMark;
    _physicsMark = physicsMark;
}

-(void)calculateAvarageMark {
    _avarageMark = (_mathMark + _physicsMark) / 2;
}

-(void) getClassification {
    if (_avarageMark > 9.0) {
        _classification = Excellent;
    } else if (_avarageMark > 7.0) {
        _classification = Good;
    } else {
        _classification = Bad;
    }
}

-(float)getAvarageMark {
    return _avarageMark;
}

-(void) showClassification {
    if (_classification == Excellent) {
        NSLog(@"He is Excellent");
    } else if (_classification == Good) {
        NSLog(@"He is Good");
    } else {
        NSLog(@"He is Bad");
    }
}

@end
