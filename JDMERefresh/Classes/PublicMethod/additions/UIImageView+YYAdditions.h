//
//  UIImageView+YYAdditions.h
//  YcEbBJRCB
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (YYAdditions)
+ (UIImageView *)imageViewTableViewHeader:(NSString *)imageName withTitle:(NSArray *)arrayTitle
                           withTitleColor:(UIColor *)colorTitle;
@end
