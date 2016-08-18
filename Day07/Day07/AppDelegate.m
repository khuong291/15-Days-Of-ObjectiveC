//
//  AppDelegate.m
//  Day07
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

#define  message_for(a, b)  \
NSLog(@#a " and " #b ": We love you!\n")
#define tokenpaster(n) NSLog (@"token" #n " = %d", token##n)
#if !defined (MESSAGE)
    #define MESSAGE "You wish!"
#endif

#define square(x) ((x) * (x))
#define MAX(x,y) ((x) > (y) ? (x) : (y))

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSLog(@"File :%s\n", __FILE__ );
    NSLog(@"Date :%s\n", __DATE__ );
    NSLog(@"Time :%s\n", __TIME__ );
    NSLog(@"Line :%d\n", __LINE__ );
    NSLog(@"ANSI :%d\n", __STDC__ );

    message_for(Khuong, Khoa);

    int token34 = 40;

    tokenpaster(34);

    NSLog(@"Here is the message: %s\n", MESSAGE);

    NSLog(@"Square of 10 is %d\n", square(10));

    NSLog(@"Max between 20 and 10 is %d\n", MAX(10, 20));

    int sum = 17, count = 5;
    CGFloat mean;

    mean = (CGFloat) sum / count;
    NSLog(@"Value of mean : %f\n", mean );

    int  i = 17;
    char c = 'c'; /* ascii value is 99 */
    CGFloat sum2 = i + c;

    NSLog(@"Value of sum : %f\n", sum2 );

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
