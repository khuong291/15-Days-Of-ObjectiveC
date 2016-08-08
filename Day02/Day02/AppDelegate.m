//
//  AppDelegate.m
//  Day02
//
//  Created by Khuong Pham on 8/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"
#import "SuperMan.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    SuperMan * khuong = [[SuperMan alloc] init];
    khuong.height = 1.77;
    khuong.weight = 67;
    [khuong calculateBMI];
    NSLog(@"Khuong's BMI is %f", khuong.BMI);
    [khuong setWeight:73];
    [khuong calculateBMI];
    NSLog(@"Khuong's BMI now is %f", khuong.BMI);

    SuperMan * christ = [[SuperMan alloc] initWithWeightAndHeight: 88 height: 1.86];
    [christ calculateBMI];
    NSLog(@"Christ BMI is %f", christ.BMI);
    
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
