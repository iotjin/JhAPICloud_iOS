//
//  MainVC.m
//  JhXcodeH5Demo
//
//  Created by lanTongMac on 2019/12/6.
//  Copyright © 2019 Jh. All rights reserved.
//

#import "MainVC.h"

#import "APIWindowContainer.h"
#import "APIManager.h"
#import "APIEvent.h"
#import "APIWebView.h"
#import "APIScriptMessage.h"
#import "APIModuleMethod.h"
#import "UZAppUtils.h"



@interface MainVC ()
<APIWebViewDelegate, APIModuleMethodDelegate, APIScriptMessageDelegate,UINavigationControllerDelegate>


@property (nonatomic, strong) APIWindowContainer *windowContainer;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor =[UIColor whiteColor];
    [self openWebView];
    
    
}


-(void)openWebView{
    
    NSString *url = @"widget://html/login/login.html";
       NSString *name = @"login";
       
       
       url = @"widget://html/Root.html";
       name = @"root";
       
       
       
       APIWindowContainer *windowContainer = [APIWindowContainer windowContainerWithAttribute:@{@"url":url, @"name":name}];
       [windowContainer startLoad];
       
       [self.navigationController pushViewController:windowContainer animated:NO];
       

       self.windowContainer = windowContainer;
       
       APIManager *manager = [APIManager sharedManager];
       
       manager.webViewDelegate = self;
       manager.moduleMethodDelegate = self;
       manager.scriptMessageDelegate = self;
    
}


- (void)webView:(APIWebView *)webView didReceiveScriptMessage:(APIScriptMessage *)scriptMessage {
    
//    NSDictionary * infoDict = scriptMessage.userInfo;
//    NSString * name = scriptMessage.name;
//    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
//    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
//    NSLog(@"====nscriptMessageName = %@\n====scriptMessage.userInfo = %@",scriptMessage.name,scriptMessage.userInfo);
//
//    if ([name isEqualToString:@"login"]) {
//#pragma mark - 登陆
//
//
//    }
//    else if ([scriptMessage.name isEqualToString:@"closeVideo"]){
//#pragma mark - 关闭视频播放器
//
//    }else if ([scriptMessage.name isEqualToString:@"scanning"]){
//    }
//    else if ([scriptMessage.name isEqualToString:@"hotUpdate"]){
//
//    }
//    else if ([scriptMessage.name isEqualToString:@"upGradleVersion"]) {
//
////        [LEEAlert alert].config
////        .LeeContent(@"检测到新版本,点击确定跳转下载.")
////        .LeeAction(@"确定", ^{
////            NSURL *url = [NSURL URLWithString:@"https://itunes.apple.com/app/apple-store/id1469323949?ct=web&mt=8"];
////            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
////        }).LeeShow();
//    }
//    else if ([scriptMessage.name isEqualToString:@"sendPhoneLabel"]) {
//
//           NSInteger number = [[scriptMessage.userInfo objectForKey:@"number"]integerValue];
//           [[UIApplication sharedApplication] setApplicationIconBadgeNumber:number];
//
//    }
   
    
}






@end
