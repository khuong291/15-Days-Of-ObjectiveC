//
//  AppDelegate.m
//  Day03
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "Sweater.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    Person *khuong = [[Person alloc] initWithName:@"Khuong"];
    Person *khoa = [[Person alloc] initWithName:@"Khoa"];

    Sweater *graySweater = [[Sweater alloc] initWithSweaterType:SweaterTypeGray];
    Sweater *blueSweater = [[Sweater alloc] initWithSweaterType:SweaterTypeBlue];

    khuong.sweater = graySweater;
    graySweater.person = khuong;

    khoa.sweater = blueSweater;
    blueSweater.person = khoa;

    khuong.sweater = graySweater;
    graySweater.person = khoa;
    blueSweater.person = nil;
    khoa.sweater = nil;

    NSString *quote = [khuong quote];
    NSLog(@"Quote: %@", quote);

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
