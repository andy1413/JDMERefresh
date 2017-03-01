//
//  UIImage+YYAdditions.m
//  GMProduct
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UIImage+YYAdditions.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIImage (YYAdditions)

+ (UIImage *)imageFromColor:(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1, 1);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage *)imageWithView:(UIView *) view{
    UIGraphicsBeginImageContext(CGSizeMake(view.bounds.size.width*2, view.bounds.size.height*2));
	[view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
    return image;
}

- (UIImage *)scaleToSize:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
}
+ (UIImage *)imageFromMainBundleFile:(NSString*)aFileName {
    NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
    return [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%@/%@", bundlePath,aFileName]];
}
- (UIImage *)scaleInSize:(CGSize)size{
    CGSize oldSize = self.size;
    CGSize newSize = CGSizeZero;
    if(size.width / size.height > oldSize.width / oldSize.height){
        newSize.height = size.height;
        newSize.width = newSize.height * oldSize.width / oldSize.height;
    }else{
        newSize.width = size.width;
        newSize.height = newSize.width * oldSize.height / oldSize.width;
    }
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    UIImage * scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return scaledImage;
}
- (UIImage *)clip:(CGRect)frame{
    CGImageRef imgRef = self.CGImage;
    CGImageRef finalImgRef=CGImageCreateWithImageInRect(imgRef,frame);
    UIImage * image = [UIImage imageWithCGImage:finalImgRef];
    CGImageRelease(finalImgRef);
    return image;
}
-(UIImage *)stretch{
    return [self stretchableImageWithLeftCapWidth:self.size.width / 2 topCapHeight:self.size.height / 2];
}
@end
