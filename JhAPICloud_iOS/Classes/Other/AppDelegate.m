//
//  AppDelegate.m
//  通用框架
//
//  Created by 西半球 on 2018/3/2.
//  Copyright © 2018年 Jh. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+ThirdLib.h"
#import "MainVC.h"

#import "APIUpdateManager.h"
#import "APIWidgetContainer.h"
#import "APIManager.h"
#import "UZAppUtils.h"

#import <AdSupport/AdSupport.h>
#import <UserNotifications/UserNotifications.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
        APIConfiguration *configuration = [[APIConfiguration alloc] init];
      // 调试时可以开启WiFi代码同步功能
      configuration.enableWifiSync = NO;
      
      [[APIManager sharedManager] initSDKWithLaunchOptions:launchOptions configuration:configuration];
      
      self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
      self.window.backgroundColor = [UIColor whiteColor];
      
      MainVC *controller = [[MainVC alloc] init];
      APIWidgetContainer *navi = [[APIWidgetContainer alloc] initWithRootViewController:controller];
      //      navi.navigationBar.barTintColor = [UZAppUtils colorFromNSString:@"#ffffff"];
      //      navi.navigationBar.translucent = YES;
      //      UIBarButtonItem * bar = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
      //      navi.navigationItem.backBarButtonItem = bar;
      //      navi.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor]};
      
      self.window.rootViewController = navi;
      [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
