//
//  UIView+YYAdditions.h
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YYAdditions)
+(void)animationMoveUpDown:(CGFloat)floatTime withView:(UIView *)view withFrame:(CGRect)frame;
+ (UIView *)tableViewHeaderFooterplaceholder:(CGRect)frame;
@end
