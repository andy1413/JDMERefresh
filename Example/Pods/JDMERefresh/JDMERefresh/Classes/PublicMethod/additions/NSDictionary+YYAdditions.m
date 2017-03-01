//
//  NSDictionary+YYAdditions.m
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.//

#import "NSDictionary+YYAdditions.h"

@implementation NSDictionary (YYAdditions)

- (NSString *)stringForKey:(id)key {
    NSString *result = [self objectForKey:key];
    if([result isKindOfClass:[NSString class]])
    {
        return result;
    }else if([result isKindOfClass:[NSNumber class]]){
        return [(NSNumber *)result stringValue];
    }
    else {
        return @"";
    }
}

@end
