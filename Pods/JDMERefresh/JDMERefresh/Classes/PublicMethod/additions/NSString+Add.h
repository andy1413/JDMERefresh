//
//  NSString+Add.h
//  YiYiBnb
//
//  Created by wangfangshuai on 15/11/19.
//  Copyright © 2015年 11bnb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Add)

-(id)objectFromJSONString;

- (NSString *)urLEncodedString;

- (NSString *)md5EncodeString;

-(CGFloat)getHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font;

-(CGFloat)getHeightWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment;

- (CGSize)getSizeWithLimitWidth:(CGFloat)width withFont:(UIFont *)font withTextLineHeight:(CGFloat)lineHeight withAlignment:(NSTextAlignment)alignment;

-(CGFloat)getWidthWithFont:(UIFont *)font;

-(CGSize)getSizeWithFont:(UIFont *)font;

+(CGFloat)getSingleHeightWithFont:(UIFont *)font;

+ (NSString *)convertStringForDate:(NSDate *)enterDate;

- (unsigned long long)unsignedLongLongValue;

#pragma mark -Color
- (UIColor *)hexStringToColor;

- (UIColor *)hexStringToColorWithAlpha: (CGFloat)alpha;

-(BOOL)isPhone;

-(BOOL)isEmail;

@end
