//
//  NSString+YYAdditions.h
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
@interface NSString (YYAdditions)

- (NSString *) stringFromMD5;
- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding;
- (NSString *)urlEncodeWithEncodingUTF8;

@end
