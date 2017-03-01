//
//  UIImageView+YYAdditions.m
//  YcEbBJRCB
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UIImageView+YYAdditions.h"
#import "UILabel+YYAdditions.h"
@implementation UIImageView (YYAdditions)
+ (UIImageView *)imageViewTableViewHeader:(NSString *)imageName
                                withTitle:(NSArray *)arrayTitle
                           withTitleColor:(UIColor *)colorTitle
{
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 677, 42)];
    backgroundImageView.image = [UIImage imageFromMainBundleFile:imageName];
    backgroundImageView.userInteractionEnabled = YES;
    for (int n = 0; n < arrayTitle.count; n ++) {
        UILabel *labelHeader = [UILabel labelWithFrame:CGRectMake(n *550 + 30, 3, 185, 36)
                                             withTitle:arrayTitle[n]
                                              WithFont:Yc_TextSize_Mid
                                             withColor:colorTitle
                                         withAlignment:NSTextAlignmentLeft
                                               withTag:0];
        [backgroundImageView addSubview:labelHeader];
    }
    return backgroundImageView;
}
@end
