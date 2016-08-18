//
//  SampleClass.h
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SampleClass : NSObject

-(NSString *) getEmployeeNameForID:(int) id withError:(NSError **)errorPtr;

@end
