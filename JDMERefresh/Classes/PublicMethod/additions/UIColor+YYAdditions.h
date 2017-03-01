//
//  UIColor+YYAdditions.h
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <UIKit/UIKit.h>

// rgb颜色
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(CGFloat)(r)/255.0 green:(CGFloat)(g)/255.0 blue:(CGFloat)(b)/255.0 alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(CGFloat)(r)/255.0 green:(CGFloat)(g)/255.0 blue:(CGFloat)(b)/255.0 alpha:(a)]
// 16进制颜色
#define HEXCOLOR(h) [UIColor meColorWithHexString:h]
#define HEXACOLOR(h,a) [UIColor meColorWithHexString:h alpha:(a)]

#define YCCLEAR [UIColor clearColor]
#define YCBLACK [UIColor blackColor]


#define Yc_Color_Text_Red [UIColor colorWithRed:189.0f/255.0f green:4.0f/255.0f blue:30.0f/255.0f alpha:1]
#define Yc_Color_Text_Blue [UIColor colorWithRed:44.0f/255.0f green:184.0f/255.0f blue:249.0f/255.0f alpha:1]
#define Yc_Color_Text_Black [UIColor colorWithRed:48.0f/255.0f green:48.0f/255.0f blue:48.0f/255.0f alpha:1]
#define Yc_Color_Text_Title [UIColor colorWithRed:159.0f/255.0f green:136.0f/255.0f blue:11.0f/255.0f alpha:1]
#define Yc_Color_Back [UIColor colorWithRed:246.0f/255.0f green:246.0f/255.0f blue:246.0f/255.0f alpha:1]
#define Yc_Color_Cell_Line [UIColor colorWithRed:188.0f/255.0f green:187.0f/255.0f blue:192.0f/255.0f alpha:1]

@interface UIColor (YYAdditions)

+(UIColor *) meColorWithHexString:(NSString *) hexColorString;
+(UIColor *) meColorWithHexString:(NSString *) hexColorString alpha:(float) alpha;
+ (UIColor *)myColorWithString:(NSString *)string;
@end
