//
//  UIViewController+JhDealloc.m
//  PersonalWage
//
//  Created by Jh on 2019/5/13.
//  Copyright © 2019 Jh. All rights reserved.
//

#import "UIViewController+JhDealloc.h"
#import <objc/runtime.h>

@implementation UIViewController (JhDealloc)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method method1 = class_getInstanceMethod(self, NSSelectorFromString(@"dealloc"));
        Method method2 = class_getInstanceMethod(self, @selector(Jh_dealloc));
        method_exchangeImplementations(method1, method2);
    });
    
}


- (void)Jh_dealloc{
    
    NSLog(@" *** %@ *** 销毁了", NSStringFromClass([self class]));
    [self Jh_dealloc];
    
}


-(void)viewWillAppear:(BOOL)animated{
    
    if (@available(iOS 13.0, *)) {
        UIEdgeInsets margins = self.view.layoutMargins;
        CGRect frame = self.view.frame;
        frame.origin.x = -margins.left;
        frame.origin.y = -margins.top;
        frame.size.width += (margins.left + margins.right);
        frame.size.height += (margins.top + margins.bottom);
        self.view.frame = frame;
    }else {
        self.view.layoutMargins = UIEdgeInsetsZero;
    }
}




@end
