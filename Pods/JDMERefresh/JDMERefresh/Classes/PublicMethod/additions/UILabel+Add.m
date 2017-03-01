//
//  UILabel+Add.m
//  YiYiBnb
//
//  Created by wangfangshuai on 16/1/27.
//  Copyright © 2016年 11bnb. All rights reserved.
//

#import "UILabel+Add.h"
//#import "TTTAttributedLabel.h"

@implementation UILabel (Add)

-(void)setAutoresizeWithLimitWidth:(float)limitWidth
{
    NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
    CGSize size = [self.text boundingRectWithSize:CGSizeMake(limitWidth, 300)
                                          options:(NSStringDrawingOptions)(NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                       attributes:tdic
                                          context:nil].size;
    [self setSize:CGSizeMake(size.width, size.height+20)];
}

#pragma mark -reload
-(void)reloadSingleRowWidthForContent
{
//    if ([self isKindOfClass:[TTTAttributedLabel class]])
//    {
//        [(TTTAttributedLabel *)self reloadTTTAttributedSingleRowWidthForContent];
//    }
//    else
    {
        NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.heightL)
                                              options:(NSStringDrawingOptions)(NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                           attributes:tdic
                                              context:nil].size;
        self.widthL = size.width;
    }
}

-(void)reloadHeightForContent
{
//    if ([self isKindOfClass:[TTTAttributedLabel class]])
//    {
//        [(TTTAttributedLabel *)self reloadTTTAttributedHeightForContent];
//    }
//    else
    {
        NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.widthL, MAXFLOAT)
                                              options:(NSStringDrawingOptions)(
                                                                               NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                           attributes:tdic
                                              context:nil].size;
        self.heightL = size.height;
    }
}

- (void)reloadHeightForContentWithLineSpacing:(CGFloat)lineSpacing
{
//    if ([self isKindOfClass:[TTTAttributedLabel class]])
//    {
//        [(TTTAttributedLabel *)self reloadTTTAttributedHeightForContent];
//    }
//    else
    {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:lineSpacing];
        [paragraphStyle setAlignment:self.textAlignment];
        NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName,paragraphStyle,NSParagraphStyleAttributeName, nil];
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(self.widthL, MAXFLOAT)
                                              options:(NSStringDrawingOptions)(
                                                                               NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                           attributes:tdic
                                              context:nil].size;
        self.attributedText = [[NSAttributedString alloc]initWithString:self.text attributes:tdic];
        self.heightL = size.height;
    }
}

-(void)reloadSingleRowHeight
{
//    if ([self isKindOfClass:[TTTAttributedLabel class]])
//    {
//        [(TTTAttributedLabel *)self reloadTTTAttributedSingleRowHeight];
//    }
//    else
    {
        NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
        CGSize size = [@"1" boundingRectWithSize:CGSizeMake(self.widthL, MAXFLOAT)
                                         options:(NSStringDrawingOptions)(
                                                                          NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                      attributes:tdic
                                         context:nil].size;
        self.heightL = size.height;
    }
}

-(void)reloadWidthForContent
{
//    if ([self isKindOfClass:[TTTAttributedLabel class]])
//    {
//        [(TTTAttributedLabel *)self reloadTTTAttributedWidthForContent];
//    }
//    else
    {
        NSDictionary *tdic = [NSDictionary dictionaryWithObjectsAndKeys:self.font,NSFontAttributeName, nil];
        CGSize size = [self.text boundingRectWithSize:CGSizeMake(MAXFLOAT, self.heightL)
                                              options:(NSStringDrawingOptions)(
                                                                               NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading)
                                           attributes:tdic
                                              context:nil].size;
        self.widthL = size.width;
    }
}

#pragma mark -Create
+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor addToView:(UIView *)view
{
    return [self createLabelwithFrame:frame text:text font:font textColor:textColor backGroundcolor:[UIColor clearColor] textAlignment:NSTextAlignmentLeft numberOfLines:1 addToView:view];
}

+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor textAlignment:(NSTextAlignment)textAlignment addToView:(UIView *)view
{
    return [self createLabelwithFrame:frame text:text font:font textColor:textColor backGroundcolor:[UIColor clearColor] textAlignment:textAlignment numberOfLines:1 addToView:view];
}

+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backGroundcolor:(UIColor *)backGroundcolor textAlignment:(NSTextAlignment)alignment numberOfLines:(NSInteger)lines
{
    return [self createLabelwithFrame:frame text:text font:font textColor:textColor backGroundcolor:backGroundcolor textAlignment:alignment numberOfLines:lines addToView:nil];
}

+ (UILabel *)createLabelwithFrame:(CGRect)frame text:(NSString *)text font:(UIFont *)font textColor:(UIColor *)textColor backGroundcolor:(UIColor *)backGroundcolor textAlignment:(NSTextAlignment)alignment numberOfLines:(NSInteger)lines addToView:(UIView *)view{
    
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    if (font) {
        label.font = font;
    }
    
    if (textColor) {
        label.textColor = textColor;
    }
    
    if (backGroundcolor) {
        label.backgroundColor = backGroundcolor;
    }
    
    if (alignment) {
        label.textAlignment = alignment;
    }
    
    if (!lines) {
        label.numberOfLines = lines;
    }
    [view addSubview:label];
    return label;
}

- (void)setAttributedTextWithLineSpacing:(CGFloat)lineSpacing withString:(NSString *)string
{
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpacing];
    [paragraphStyle setAlignment:self.textAlignment];
    self.attributedText = [[NSAttributedString alloc]initWithString:string attributes:@{NSParagraphStyleAttributeName:paragraphStyle}];
}

@end
