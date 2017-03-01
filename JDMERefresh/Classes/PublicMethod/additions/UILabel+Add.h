//
//  UILabel+Add.h
//  YiYiBnb
//
//  Created by wangfangshuai on 16/1/27.
//  Copyright © 2016年 11bnb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Add)

-(void)setAutoresizeWithLimitWidth:(float)limitWidth;

#pragma mark -reload
//单行设置width根据内容
-(void)reloadSingleRowWidthForContent;

//根据自身width自适应高度
-(void)reloadHeightForContent;

//带行间距的适应高度
- (void)reloadHeightForContentWithLineSpacing:(CGFloat)lineSpacing;

-(void)reloadSingleRowHeight;

//根据自身height自适应宽度
-(void)reloadWidthForContent;

#pragma mark -Create
+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor addToView:(UIView *)view;

+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment addToView:(UIView *)view;

+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backGroundcolor:(UIColor *)backGroundcolor textAlignment:(NSTextAlignment)alignment numberOfLines:(NSInteger)lines;

/**
 *  设置行间距
 *
 *  @param lineSpacing 行间距
 *  @param string      文本
 */
- (void)setAttributedTextWithLineSpacing:(CGFloat)lineSpacing withString:(NSString *)string;
@end
