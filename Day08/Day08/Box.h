//
//  Box.h
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject {

    double length;
    double breadth;
}

@property (nonatomic, readwrite) double height;

-(double) volume;

@end
