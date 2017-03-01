//
//  UILabel+YYAdditions.h
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (YYAdditions)
+ (UILabel *)labelWithFrame:(CGRect)frame withTitle:(NSString *)title WithFont:(UIFont *)font withColor:(UIColor *)color
             withAlignment:(NSTextAlignment)alignment withTag:(NSInteger)tag;
@end
