


//  Created by 刘斯基 on 14-6-27.
//  Copyright (c) 2014年 Json--(ljjwj36@gmail.com). All rights reserved.


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (TTCategory)

-(void)setWidthHeightConstrain;

-(void)setHeightConstrainWithSetWidth:(CGFloat)width;

@property(nonatomic) CGFloat leftL;
@property(nonatomic) CGFloat topL;
@property(nonatomic) CGFloat rightL;
@property(nonatomic) CGFloat bottomL;

@property(nonatomic) CGFloat widthL;
@property(nonatomic) CGFloat heightL;

@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;

@property(nonatomic,readonly) CGFloat screenX;
@property(nonatomic,readonly) CGFloat screenY;
@property(nonatomic,readonly) CGFloat screenViewX;
@property(nonatomic,readonly) CGFloat screenViewY;
@property(nonatomic,readonly) CGRect screenFrame;

@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;

@property(nonatomic) BOOL visible;
//@property(nonatomic) CGFloat widthL;

/**
 * Finds the first descendant view (including this view) that is a member of a particular class.
 */
- (UIView*)descendantOrSelfWithClass:(Class)cls;

/**
 * Finds the first ancestor view (including this view) that is a member of a particular class.
 */
- (UIView*)ancestorOrSelfWithClass:(Class)cls;

/**
 * Removes all subviews.
 */
- (void)removeAllSubviews;


/**
 * Calculates the offset of this view from another view in screen coordinates.
 */
- (CGPoint)offsetFromView:(UIView*)otherView;


/**
 * The view controller whose view contains this view.
 */
- (UIViewController*)viewController;


- (void)addSubviews:(NSArray *)views;

@end
