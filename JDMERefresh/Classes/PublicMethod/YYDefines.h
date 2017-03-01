//
//  YYDefines.h
//  YYProject
//
//  Created by 郑小龙 on 13-11-18.
//  Copyright (c) 2013年 郑小龙. All rights reserved.
//

#import <Foundation/Foundation.h>

// 只有定义了DEBUG宏的情况下才输出日志
#ifdef DEBUG
# define YcLog(format, ...) NSLog((@"[文件名:%s]" "[函数名:%s]" "[行号:%d]======>>" format), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
# define YcLog(...)
#endif
//#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
//#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

//字体
#define Yc_TextSize_Font(f) [UIFont systemFontOfSize:f]

#define Yc_TextSize_Max [UIFont systemFontOfSize:22.0f]

#define Yc_TextSize_Mid [UIFont systemFontOfSize:18.0f]

#define Yc_TextSize_Min [UIFont systemFontOfSize:16.0f]

#define Yc_TextSize_But [UIFont systemFontOfSize:16.0f]

#define Yc_TextSize_Thick   [UIFont fontWithName:@"Bold" size:18]//System Bold

#define Yc_Time_Interval [_shardeInstance.pubMutableDictionary[@"body"][@"smCtrlTime"] integerValue]   //重发验证码等待时间

//CGrectMake
void ycCGRectMake(int x,int y,int w,int h);
#define YcRectMake(x,y,w,h) CGrectMake(x,y,w,h)

//systemVersion
NSUInteger DeviceSystemMajorVersion();
#define IF_IOS_7 (DeviceSystemMajorVersion() >= 7)
#define ALTERNATIVE_NUMBER (([[[UIDevice currentDevice] systemVersion] intValue] >= 7.0)?20:0)



void yyShowAlert(id formatstring,...);
void yyShowAlertWithDefaultTimeout(NSString *title);
void yyShowAlertWithTimeout(NSString *title,float timeout);

#define YYAlert(format, ...) yyShowAlert(format, ##__VA_ARGS__)
#define YYAlertWithDefaultTimeout(title) yyShowAlertWithDefaultTimeout(title)
#define YYAlertWithTimeout(title,timeout) yyShowAlertWithTimeout(title,timeout)



@interface YYDefines : NSObject
@end
