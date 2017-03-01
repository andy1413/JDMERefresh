//
//  UIColor+YYAdditions.m
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "UIColor+YYAdditions.h"

@implementation UIColor (YYAdditions)

#define YY_ERROR_COLOR [UIColor blackColor]

+(UIColor *)meColorWithHexString:(NSString *)hexString{
    return [UIColor meColorWithHexString:hexString alpha:1];
}
+(UIColor *)meColorWithHexString:(NSString *)hexString alpha:(float)alpha{
    if ([hexString hasPrefix:@"#"]) {
        hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    if (6 != hexString.length) {
        if ( hexString.length < 6 ) {
//            YcLog(@"颜色值：#%@ (长度不够)",hexString);
            return YY_ERROR_COLOR;
        } else {
//            YcLog(@"颜色值：#%@ (长度过长，自动取前6位)",hexString);
        }
    }
    unsigned int red, green, blue;
	NSRange range;
	range.length = 2;
    range.location = 0; 
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&red];
    range.location = 2; 
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&green];
    range.location = 4; 
    [[NSScanner scannerWithString:[hexString substringWithRange:range]] scanHexInt:&blue]; 
    
	return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green/255.0f) blue:(float)(blue/255.0f) alpha:(float)(alpha*1.0f)];
}


+ (UIColor *)myColorWithString:(NSString *)string
{
    NSString *cString = [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    
    if ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    
    // Separate into r, g, b substrings
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    NSScanner *scanner;
    scanner = [[NSScanner alloc] initWithString:rString];
    [scanner scanHexInt:&r];
    
    scanner = [[NSScanner alloc] initWithString:gString];
    [scanner scanHexInt:&g];
    
    scanner = [[NSScanner alloc] initWithString:bString];
    
    [scanner scanHexInt:&b];
    
    UIColor *resultColor = [[UIColor alloc] initWithRed:((float) r / 255.0f)
                                                  green:((float) g / 255.0f)
                                                   blue:((float) b / 255.0f)
                                                  alpha:1.0f];
    return resultColor;
}
@end
