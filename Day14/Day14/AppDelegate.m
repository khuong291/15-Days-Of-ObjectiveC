//
//  AppDelegate.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    // Movies
    MediaListViewController *moviesVC = (MediaListViewController *)[storyboard instantiateViewControllerWithIdentifier:@"MediaList"];
    moviesVC.title = @"Movies";
    moviesVC.mediaType = MediaTypeMovie;
    moviesVC.tabBarItem.image = [[UIImage imageNamed:@"superman"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    UINavigationController *moviesNC = [[UINavigationController alloc] initWithRootViewController:moviesVC];
    moviesNC.navigationBar.barTintColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
    moviesNC.navigationBar.tintColor = [UIColor yellowColor];
    moviesNC.navigationBar.barStyle = UIBarStyleBlack;

    //DVDs
    MediaListViewController *dvdsVC = (MediaListViewController *)[storyboard instantiateViewControllerWithIdentifier:@"MediaList"];
    dvdsVC.title = @"DVDs";
    dvdsVC.mediaType = MediaTypeDVD;
    dvdsVC.tabBarItem.image = [[UIImage imageNamed:@"hulk"] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    UINavigationController *dvdsNC = [[UINavigationController alloc] initWithRootViewController:dvdsVC];
    dvdsNC.navigationBar.barTintColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
    dvdsNC.navigationBar.tintColor = [UIColor yellowColor];
    dvdsNC.navigationBar.barStyle = UIBarStyleBlack;

    tabBarController.viewControllers = @[moviesNC, dvdsNC];
    tabBarController.tabBar.barTintColor = [[UIColor blackColor]colorWithAlphaComponent:0.5];
    [self.window makeKeyAndVisible];

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
