//
//  YYDefines.m
//  YYProject
//
//  Created by 郑小龙 on 13-11-18.
//  Copyright (c) 2013年 郑小龙. All rights reserved.
//

#import "YYDefines.h"
static const NSTimeInterval kAnimationDurationMax = 3;
static const NSTimeInterval kAnimationDurationMin = 1;

NSUInteger DeviceSystemMajorVersion()
{
    static NSUInteger _deviceSystemMajorVersion = -1;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _deviceSystemMajorVersion = [[[[[UIDevice currentDevice] systemVersion] componentsSeparatedByString:@"."] objectAtIndex:0] intValue];
    });
    return _deviceSystemMajorVersion;
}

void ycCGRectMake(int x,int y,int w,int h)
{
    if (IF_IOS_7) {
        CGRectMake(x, y, w,h);
    }
    else
    {
        CGRectMake(x, y+20, w,h);
    }
    
}

void yyShowAlert(id formatstring,...)
{
	va_list arglist;
	if (!formatstring) return;
	va_start(arglist, formatstring);
	id outstring = [[NSString alloc] initWithFormat:formatstring arguments:arglist];
	va_end(arglist);
	
    UIAlertView *av = [[UIAlertView alloc] initWithTitle:outstring message:nil delegate:nil cancelButtonTitle:@"确定"otherButtonTitles:nil];
	[av show];
}

//-----------------------------------------------------------------------------------
// 显示一个对话框，过0.5秒后自动关闭
//-----------------------------------------------------------------------------------
//#define DEFAULT_ALERT_TIME_OUT  3.0
//#define DEFAULT_ALERT_TIME_OUT_MIN  1.0
void yyShowAlertWithDefaultTimeout(NSString *title)
{
    yyShowAlertWithTimeout(title, kAnimationDurationMax);
}
void yyShowAlertWithTimeout(NSString *title,float timeout){
    if (timeout<=0) {
        timeout = kAnimationDurationMax;
    }else {
        timeout = MAX(timeout, kAnimationDurationMin);
    }
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:nil delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alert show];
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeout * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [alert dismissWithClickedButtonIndex:<#(NSInteger)#> animated:<#(BOOL)#>];
//    });
    [alert performSelector:@selector(dismissWithClickedButtonIndex:animated:) withObject:nil afterDelay:timeout];
}

@implementation YYDefines
@end
