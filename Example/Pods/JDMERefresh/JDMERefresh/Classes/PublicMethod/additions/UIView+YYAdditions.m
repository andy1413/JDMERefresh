//
//  UIView+YYAdditions.m
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UIView+YYAdditions.h"

@implementation UIView (YYAdditions)
+(void)animationMoveUpDown:(CGFloat)floatTime withView:(UIView *)view withFrame:(CGRect)frame
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [UIView beginAnimations:nil context:context];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:floatTime];
    view.frame = frame;
    [UIView commitAnimations];
}
+ (UIView *)tableViewHeaderFooterplaceholder:(CGRect)frame
{
    UIView *temporaryView = [[UIView alloc] initWithFrame:frame];
    temporaryView.backgroundColor = [UIColor clearColor];
    return temporaryView;
}
@end
