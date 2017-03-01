//
//  JDMEMacroDefines.h
//  JDMEForIphone
//
//  Created by FreyQ on 15/3/16.
//  Copyright (c) 2015年 jd.com. All rights reserved.
//

/***
 ME项目中全局宏的统一定义文件
 ****/

#ifndef JDMEForIphone_JDMEMacroDefines_h
#define JDMEForIphone_JDMEMacroDefines_h

#pragma mark- 定义tag的宏
#define ERRORDEFAULTVIEWTG  13600   //默认提示页面（请求失败）的tag值
#define NODATADEFAULTVIEWTG 13601   //默认提示页面（数据为空）的tag值

#pragma mark- 定义字符串的宏
#define DEFAULENODATA @"亲，暂无信息记录"
#define DIDIDACHEORDERNODATA @"亲，暂无打车订单哦～"
#define kNoNetTips @"您的网络好像不太给力，请稍后重试"//会议室超时、网络不佳时提示


#define kSafeObject(string) string?string:@""

//请求的response 字典为空
#define SERVICEDATAERROR @"数据异常，请稍后重试"

#define REQUESTFAILED [CheckNetwork chexkNetwork ] == 0 ? @"当前无网络，请检查您的网络状态" : @"小ME开小差了，请点击重试"

#define SHOWFAILEDTITLE(a) [CheckNetwork chexkNetwork ] == 0 ?[NSString stringWithFormat:@"当前无网络，请检查您的网络状态"]:[NSString stringWithFormat:@"小ME开小差了，请稍后再试.\n（错误码：%@）",a]


#define NOBLDATADEFAULT @"亲,暂无待办"
#define NOMESDATADEFAULT @"亲,暂无消息"

#define NOBLSHENQINGDATADEFAULT @"亲,暂无申请"

#define NOBLDATADEFAULT_click @"小ME开小差了，请点击重试"
#define BLREFUSE_PLACEHOLDER @"请输入拒绝的原因......"


#define ISINNER @"isInnner" //1:内网 0:外网


#pragma mark- 定义通知名称的宏
#define NOTIFICATIONNAME_CURRENTNETISINNER @"currentNetIsInner" //当前网络是内网发出的通知

#define NOTIFICATIONNAME_SETTINGLOCKPAGEDISMISS @"lockPageDismiss" //设置手势锁消失界面的通知-用于展示首页的进场动画


#define ISIOS8 [[UIDevice currentDevice].systemVersion floatValue] >= 8.0?1:0
#define ISIOS10 [[UIDevice currentDevice].systemVersion floatValue] >= 10.0?1:0

#define SCREENWIDTH  [UIScreen mainScreen].bounds.size.width
#define SCREEN_WIDTH    SCREENWIDTH

#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_HEIGHT    SCREENHEIGHT

#define DIDIDACHEBTNHEIGHT (40.0 * SCREENWIDTH / 320.0 > 52.0 ? 52.0 : 40.0 * SCREENWIDTH / 320.0)
#define maxNumCount [PublicMethods backlogMaxCount]
//userdefault key - 关于是否首次登陆以及是否点击过用户头像的记录
#define kSHOWCARDSIGN     @"showCardSign" //是否显示标记 ，显示过标记为“1”
#define kHADSHOWANIMATION @"hadShowAnimation"  //是否显示过抖动动画，显示过标记为“1”
#define kIsAttendance     @"isAttendance"  //用户类型，是否需要打卡：1：需要打卡。0：不需要打卡
#define kSex              @"sex"          
#define kShowMask         @"showMask"      //是否显示蒙版
#define kUSERNAME         @"userName"
#define kADAwakeDuration  @"ADAwakeDuration" //广告唤醒时间
#define kADCACHEKEY       @"ADCacheKey"      //广告存储在沙盒上的名称，用以清理沙盒使用
#endif
