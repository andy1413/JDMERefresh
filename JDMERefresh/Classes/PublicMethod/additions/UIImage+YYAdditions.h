//
//  UIImage+YYAdditions.h
//  GMProduct
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YYAdditions)

+ (UIImage *)imageWithView:(UIView *) view;
- (UIImage *)scaleToSize:(CGSize) size;
+ (UIImage *)imageFromMainBundleFile:(NSString*)aFileName;//获取图片地址加载图片
- (UIImage *)scaleInSize:(CGSize)size;
- (UIImage *)clip:(CGRect)frame;
- (UIImage *)stretch;

+ (UIImage *)imageFromColor:(UIColor *)color;

@end
