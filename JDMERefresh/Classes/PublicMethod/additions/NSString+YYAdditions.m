//
//  NSString+YYAdditions.m
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.//

#import "NSString+YYAdditions.h"

@implementation NSString (YYAdditions)

- (NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding {
    CFStringRef sRef = CFURLCreateStringByAddingPercentEscapes(NULL,
                                                               (CFStringRef)self,
                                                               NULL,
                                                               (CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
                                                               CFStringConvertNSStringEncodingToEncoding(encoding));
    NSString *re = [NSString stringWithFormat:@"%@",sRef];
    CFRelease(sRef);
    return re;
}

- (NSString *)urlEncodeWithEncodingUTF8{
    return [self urlEncodeUsingEncoding:NSUTF8StringEncoding];
}
- (NSString *) stringFromMD5{
    
    if(self == nil || [self length] == 0)
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    
    return outputString;
}
@end
