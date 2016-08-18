//
//  SampleClass.m
//  Day08
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "SampleClass.h"

@implementation SampleClass

-(NSString *) getEmployeeNameForID:(int) id withError:(NSError **)errorPtr{
    if(id == 1)
    {
        return @"Employee Test Name";
    }
    else
    {
        NSString *domain = @"com.MyCompany.MyApplication.ErrorDomain";
        NSString *desc =@"Unable to complete the process";
        NSDictionary *userInfo = [[NSDictionary alloc]
                                  initWithObjectsAndKeys:desc,
                                  @"NSLocalizedDescriptionKey",NULL];
        *errorPtr = [NSError errorWithDomain:domain code:-101
                                    userInfo:userInfo];
        return @"";
    }
}

@end
