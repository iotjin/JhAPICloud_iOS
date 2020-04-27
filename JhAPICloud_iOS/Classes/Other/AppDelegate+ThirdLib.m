//
//  AppDelegate+ThirdLib.m
//  PersonalWage
//
//  Created by Jh on 2019/3/5.
//  Copyright © 2019 Jh. All rights reserved.
//

#import "AppDelegate+ThirdLib.h"

@implementation AppDelegate (ThirdLib)



- (void)AppDelegate_configIQKeyboardManager{
    
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].enableAutoToolbar = YES;
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = @"完成";
    [IQKeyboardManager sharedManager].preventShowingBottomBlankSpace = YES;
    [IQKeyboardManager sharedManager].preventShowingBottomBlankSpace = NO;
    [IQKeyboardManager sharedManager].toolbarTintColor=[UIColor lightGrayColor];
    [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = 5.0f;
    
    
}



- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    
    SDWebImageManager *manager = [SDWebImageManager sharedManager];
    [manager cancelAll];
    [manager.imageCache clearMemory];
    
}




@end
