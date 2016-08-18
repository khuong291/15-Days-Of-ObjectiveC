//
//  SampleClass.m
//  Day09
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

-(void) startAction {
    PrintClass *printClass = [[PrintClass alloc] init];
    [printClass setDelegate:self];
    [printClass printDetails];
}

-(void)processCompleted{
    NSLog(@"Printing Process Completed");
}

@end
