//
//  SuperMan.m
//  Day02
//
//  Created by Khuong Pham on 8/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "SuperMan.h"

@implementation SuperMan

-(id)initWithWeightAndHeight: (float)weight height:(float)height {
    self = [self init];
    if (self) {
        self.weight = weight;
        self.height = height;
    }
    return self;
}

-(void)calculateBMI {
    _BMI = _weight / (_height * _height);
}

@end
