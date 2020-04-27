//
//  UIView+Extension.h
//  搭手
//
//  Created by pcbeta on 15/9/23.
//  Copyright (c) 2015年 Dashou Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;


+ (instancetype)viewFromXib;

- (BOOL)intersectWithView:(UIView *)view;

- (void)Jh_removeAllSubviews;

- (UIView *)Jh_findSubViewWithClass:(Class)clazz;

@end
