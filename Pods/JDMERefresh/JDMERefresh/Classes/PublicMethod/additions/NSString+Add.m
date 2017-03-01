//
//  NSString+Add.m
//  YiYiBnb
//
//  Created by wangfangshuai on 15/11/19.
//  Copyright © 2015年 11bnb. All rights reserved.
//

#import "NSString+Add.h"
#import <CommonCrypto/CommonCrypto.h>

#define CC_MD5_DIGEST_LENGTH 16


@implementation NSString (Add)

-(char)charValue
{
    return '0';
}

/*
+(CGFloat)getTTTAttributedSingleHeightWithFont:(UIFont *)font
{
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:@"1" attributes:@{NSFontAttributeName:font}];
    return [TTTAttributedLabel sizeThatFitsAttributedString:str withConstraints:CGSizeMake(kScreenWidth, MAXFLOAT) limitedToNumberOfLines:1].height;
}

-(CGFloat)getTTTAttributedHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font
{
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font}];
    return [TTTAttributedLabel sizeThatFitsAttributedString:str withConstraints:CGSizeMake(width, MAXFLOAT) limitedToNumberOfLines:0].height;
}

- (CGFloat)getTTTAttributedHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment{
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineHeight];
    [paragraphStyle setAlignment:alignment];
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle}];
    return [TTTAttributedLabel sizeThatFitsAttributedString:str withConstraints:CGSizeMake(width, MAXFLOAT) limitedToNumberOfLines:0].height;
}

- (CGSize)getTTTAttributedSizeWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment{
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineHeight];
    [paragraphStyle setAlignment:alignment];
    
    NSAttributedString *str = [[NSAttributedString alloc] initWithString:self attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle}];
    return [TTTAttributedLabel sizeThatFitsAttributedString:str withConstraints:CGSizeMake(width, MAXFLOAT) limitedToNumberOfLines:0];
}*/

-(id)objectFromJSONString
{
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
}

- (NSString *)urLEncodedString {
    return [self stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
}



- (NSString *)md5EncodeString {
    const char* original_str=[self UTF8String];
    unsigned char digist[CC_MD5_DIGEST_LENGTH]; //CC_MD5_DIGEST_LENGTH = 16
    CC_MD5(original_str, (uint)strlen(original_str), digist);
    NSMutableString* outPutStr = [NSMutableString stringWithCapacity:10];
    for(int  i =0; i<CC_MD5_DIGEST_LENGTH;i++){
        [outPutStr appendFormat:@"%02x", digist[i]];//小写x表示输出的是小写MD5，大写X表示输出的是大写MD5
    }
    return [outPutStr lowercaseString];
}

+(NSString *)countNumAndChangeformat:(NSString *)num
{
    int count = 0;
    long long int a = num.longLongValue;
    while (a != 0)
    {
        count++;
        a /= 10;
    }
    NSMutableString *string = [NSMutableString stringWithString:num];
    NSMutableString *newstring = [NSMutableString string];
    while (count > 3) {
        count -= 3;
        NSRange rang = NSMakeRange(string.length - 3, 3);
        NSString *str = [string substringWithRange:rang];
        [newstring insertString:str atIndex:0];
        [newstring insertString:@"," atIndex:0];
        [string deleteCharactersInRange:rang];
    }
    [newstring insertString:string atIndex:0];
    return newstring;
}

-(CGFloat)getHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font
{
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil];
    return ceil(rect.size.height);
}

- (CGFloat)getHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment{
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineHeight];
    [paragraphStyle setAlignment:alignment];
    
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle} context:nil];
    return ceil(rect.size.height);
}

- (CGSize)getSizeWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment{
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineHeight];
    [paragraphStyle setAlignment:alignment];
    
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font,NSParagraphStyleAttributeName:paragraphStyle} context:nil];
    return rect.size;
}

-(CGFloat)getWidthWithFont:(UIFont *)font
{
    CGRect rect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return ceil(rect.size.width);
}

-(CGSize)getSizeWithFont:(UIFont *)font
{
    CGRect rect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size;
}

+(CGFloat)getSingleHeightWithFont:(UIFont *)font
{
    CGRect rect = [@"1" boundingRectWithSize:CGSizeMake(SCREENWIDTH, MAXFLOAT) options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil];
    return ceil(rect.size.height);
}

- (BOOL)containsString:(NSString *)str
{
    if ([self rangeOfString:str].length > 0)
    {
        return YES;
    }
    return NO;
}

- (unsigned long long)unsignedLongLongValue {
    return strtoull([self UTF8String], NULL, 0);
}

#pragma mark -Color
- (UIColor *)hexStringToColor
{
    return [self hexStringToColorWithAlpha:1.0f];
}

- (UIColor *)hexStringToColorWithAlpha: (CGFloat)alpha{
    
    NSString *cString = [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 charactersif ([cString length] < 6) return [UIColor blackColor];
    // strip 0X if it appearsif ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
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
    
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

-(BOOL)isPhone
{
    NSString *phoneFormat = @"1(?:[38]\\d|4[57]|5[0-35-9]|7[06-8])\\d{8}";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneFormat];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
    return YES;
}

-(BOOL)isEmail
{
    NSString *phoneFormat = @"[a-z0-9!#$%&#$%&amp;'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&#$%&amp;'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",phoneFormat];
    BOOL isMatch = [pred evaluateWithObject:self];
    return isMatch;
    return YES;
}

+ (NSString *)convertStringForDate:(NSDate *)enterDate
{
    NSDate *date = [NSDate date];
    NSTimeInterval time = [enterDate timeIntervalSinceDate:date];
    
    int days = floor(time / 86400);
    int weeks  = (int)ceil(days / 7);
    int months = (int)ceil(days / 30);
    int years  = (int)ceil(days / 365);
    
    if (days <= 0) {
        return [NSString stringWithFormat:@"今天"];
    }
    else if(days < 7)
    {
        return [NSString stringWithFormat:@"%d天后",days <= 0 ? 1 : days];
    }
    else if(days >= 7 && weeks > 0 && weeks < 4)
    {
        return [NSString stringWithFormat:@"%d周后",weeks];
    }
    else if(weeks >= 4 && months >= 0 && months < 12)
    {
        return [NSString stringWithFormat:@"%d月后",weeks >= 4 && months == 0 ? 1 : months];
    }
    else
    {
        return [NSString stringWithFormat:@"%d年后",years];
    }
}

@end
