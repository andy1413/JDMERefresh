//
//  JDDefines.h
//  JDMEFirst
//
//  Created by  L on 14-6-18.
//  Copyright (c) 2014年 林晓峰. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "UIColor+YYAdditions.h"
#import "UIImage+YYAdditions.h"
@interface JDDefines : NSObject

//#define Archive 0      //自定义服务器 分为：正式、预发布、测试、55、自定义   💘Archive 0 时 “INTERNET” 设置为任何都无效💀
#define Archive 1       // 新登录

#define     INTERNET  0  //正式环境
//#define   INTERNET  1  //预发布环境
//#define   INTERNET  2    // 测试
//#define   INTERNET  3  // 130服务器
//#define   INTERNET  4  // 131服务器
//#define   INTERNET  5  // 55服务器 &&其他

#define JSPatchTest 0    //测试沙盒中的JSPatch文件
//#define JSPatchTest 1    //测试Bunld中的JSPatch文件


//下载地址
//#define iTunesStringFaBu @"itms-services://?action=download-manifest&url=https://jdme.jd.com/JDMEIphone.plist";
#define iTunesStringFaBu @"itms-services://?action=download-manifest&url=https://storage.jd.com/jd.jme.production.client/JDMEIphone.plist";

//#define iTunesStringFaBu @"itms-services://?action=download-manifest&url=https://jdmegy.jd.com/JDMEIphone.plist";


// 内外网网络
#define HTTP_URL                 [[NSUserDefaults standardUserDefaults] objectForKey:@"serverWai"] == nil ?@"https://jdme.jd.com" :[[NSUserDefaults standardUserDefaults] objectForKey:@"serverWai"]

#define HTTP_URL_Internal_network [[NSUserDefaults standardUserDefaults] objectForKey:@"serverNei"] == nil ?@"https://jme.jd.com" : [[NSUserDefaults standardUserDefaults] objectForKey:@"serverNei"]

#define ISLOG    YES



//字体
#define JD_TextSize_Home_DaoHangLabel [UIFont systemFontOfSize:30.0f/2]
#define JD_TextSize_Home_SalutationView_Label [UIFont systemFontOfSize:28.0f/2]

//颜色
#define JD_ColourSet_JingDongHongBackGround  @"#e4393c"
#define LabelBackGround_Home_DaoHang @"#ffffff"

// 16进制颜色
#define HEXCOLOR(h) [UIColor meColorWithHexString:h]
#define HEXACOLOR(h,a) [UIColor meColorWithHexString:h alpha:(a)]

#define YCCLEAR [UIColor clearColor]
#define YCBLACK [UIColor blackColor]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//带有RGBA的颜色设置
#define COLOR(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

// 获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

//背景色
#define BACKGROUND_COLOR [UIColor colorWithRed:242.0/255.0 green:236.0/255.0 blue:231.0/255.0 alpha:1.0]

//清除背景色
#define CLEARCOLOR [UIColor clearColor]

#define kAuto6PHeight(height) (is6P?(height*1.13):height)

@end
