//
//  NSData+YYAdditions.h
//  GMProduct
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (YYAdditions)

- (NSData *)AES256EncryptWithKey:(NSString *)key;
- (NSData *)AES256DecryptWithKey:(NSString *)key;

@end
