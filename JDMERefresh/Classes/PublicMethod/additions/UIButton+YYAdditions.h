//
//  UIButton+YYAdditions.h
//  YcUniversalTemplate
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.//

#import <UIKit/UIKit.h>

@interface UIButton (YYAdditions)
+(UIButton *)buttonWithFrame:(CGRect)frame withImageNormal:(UIImage *)normal withImageSelected:(UIImage *)selected withTitle:(NSString *)title withTarget:(id)targer withAction:(SEL)action withTag:(NSInteger)tag;
@end
