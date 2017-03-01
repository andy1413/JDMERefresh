//
//  UIButton+YYAdditions.m
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UIButton+YYAdditions.h"

@implementation UIButton (YYAdditions)
+(UIButton *)buttonWithFrame:(CGRect)frame withImageNormal:(UIImage *)normal withImageSelected:(UIImage *)selected withTitle:(NSString *)title withTarget:(id)targer withAction:(SEL)action withTag:(NSInteger)tag
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    button.tag = tag;
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:normal forState:UIControlStateNormal];
    [button setBackgroundImage:selected forState:UIControlStateSelected];
    [button addTarget:targer action:action forControlEvents:UIControlEventTouchUpInside];
    return button;
}
@end
