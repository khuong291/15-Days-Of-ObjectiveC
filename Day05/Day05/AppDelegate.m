//
//  AppDelegate.m
//  Day05
//
//  Created by Khuong Pham on 8/17/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    double array[] = {1000.0, 2.0, 3.4, 17.0, 50.0};
    array[4] = 20.0;
    NSLog(@"Address of var1 variable: %f\n", array[4] );

    int var1;
    char var2[10];
    NSLog(@"Address of var1 variable: %x\n", &var1 );
    NSLog(@"Address of var2 variable: %x\n", &var2 );

    int var = 20;
    int *ip;
    ip = &var;
    NSLog(@"Address of var variable: %x\n", &var  );
    NSLog(@"Address stored in ip variable: %x\n", ip );
    NSLog(@"Value of *ip variable: %d\n", *ip );

    int  *ptr = NULL;
    NSLog(@"The value of ptr is : %x\n", ptr  );

    NSString *str1 = @"Hello";
    NSString *str2 = @"World";
    NSString *str3;
    int len ;

    /* uppercase string */
    str3 = [str2 uppercaseString];
    NSLog(@"Uppercase String :  %@\n", str3 );

    /* concatenates str1 and str2 */
    str3 = [str1 stringByAppendingFormat:@" World"];
    NSLog(@"Concatenated string:   %@\n", str3 );

    /* total length of str3 after concatenation */
    len = [str3 length];
    NSLog(@"Length of Str3 :  %d\n", len );

    /* InitWithFormat */
    str3 = [[NSString alloc] initWithFormat:@"%@ %@",str1,str2];
    NSLog(@"Using initWithFormat:   %@\n", str3 );

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
