//
//  AppDelegate.m
//  Day06
//
//  Created by Khuong Pham on 8/17/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"
#import "SampleClass.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    struct Books Book1;

    Book1.title = @"Objective-C Programming";
    Book1.author = @"Nuha Ali";
    Book1.subject = @"Objective-C Programming Tutorial";
    Book1.book_id = 6495407;

    NSLog(@"Book 1 title : %@\n", Book1.title);
    NSLog(@"Book 1 author : %@\n", Book1.author);
    NSLog(@"Book 1 subject : %@\n", Book1.subject);
    NSLog(@"Book 1 book_id : %d\n", Book1.book_id);

    SampleClass *sampleClass = [[SampleClass alloc] init];
    [sampleClass printBook:Book1];

    struct Books *struct_pointer;
    struct_pointer = &Book1;
    NSLog(@"Book 1 title : %@\n", struct_pointer->title);
    
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
