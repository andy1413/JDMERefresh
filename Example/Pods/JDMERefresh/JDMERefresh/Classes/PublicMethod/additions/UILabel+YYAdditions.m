//
//  UILabel+YYAdditions.m
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UILabel+YYAdditions.h"

@implementation UILabel (YYAdditions)
+ (UILabel *)labelWithFrame:(CGRect)frame withTitle:(NSString *)title WithFont:(UIFont *)font withColor:(UIColor *)color
             withAlignment:(NSTextAlignment)alignment withTag:(NSInteger)tag;
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = title;
    label.textAlignment = alignment;
    label.font = font;
    label.textColor = color;
    label.tag = tag;
    label.backgroundColor = [UIColor clearColor];
    return label;
}
@end
