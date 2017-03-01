//
//  PrefixHeader.pch
//  JDMERefresh
//
//  Created by 王方帅 on 17/2/24.
//  Copyright © 2017年 王方帅. All rights reserved.
//

#ifndef JDMERefresh
#define JDMERefresh

#define isIos7 [[[UIDevice currentDevice] systemVersion] intValue]>=7
#define isSmallScreen ([UIScreen mainScreen].bounds.size.height) == 480
#define is6P   ([UIScreen mainScreen].bounds.size.height) == 736
#define is6    ([UIScreen mainScreen].bounds.size.height) == 667
#define is4Or5 ([UIScreen mainScreen].bounds.size.width)  == 320
#define is5    ([UIScreen mainScreen].bounds.size.height) == 568

// Include any system framework and library headers here that should be included in all compilation units.
// You will also need to set the Prefix Header build setting of one or more of your targets to reference this file.
#import "YYAddtionsHeaders.h"
#import "JDDefines.h"
#import "JDMEMacroDefines.h"
#import "YYDefines.h"
#import "JDMEUnionRefreshGifHeader.h"

#endif /* PrefixHeader_pch */
