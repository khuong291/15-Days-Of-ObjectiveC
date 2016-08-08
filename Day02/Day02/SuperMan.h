//
//  SuperMan.h
//  Day02
//
//  Created by Khuong Pham on 8/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SuperMan : NSObject

-(id)initWithWeightAndHeight: (float)width height:(float)height;

@property (assign) float weight;
@property (assign) float height;
@property (assign) float BMI;

-(void)calculateBMI;

@end
