//
//  NSURL+YYAdditions.m
//  YYProject
//
//  Created by 刘斯基 on 14-10-23.
//  Copyright (c) 2014年 jd.com. All rights reserved.
//

#import "NSURL+YYAdditions.h"

@implementation NSURL (YYAdditions)

- (NSDictionary *) queryDictionary{
	NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
	NSString *query = [self query];
    if (!query) {
        return nil;
    }
	NSArray *queryArr = [query componentsSeparatedByString:@"&"];
	for (NSString *queryArri in queryArr) {
		NSArray *queryArriArr = [queryArri componentsSeparatedByString:@"="];
		if ([queryArriArr count]==2) {
			NSString *key = [queryArriArr objectAtIndex:0];
			NSString *value = [[queryArriArr objectAtIndex:1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
			[dictionary setObject:value forKey:key];
		}
	}
	return dictionary;
}
- (NSArray *)queryArray
{
    NSMutableArray *contentMutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    NSMutableArray *keyMutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    NSMutableArray *valueMutablearray = [[NSMutableArray alloc] initWithCapacity:10];
	NSString *query = [self query];
    if (!query) {
        return nil;
    }
	NSArray *queryArr = [query componentsSeparatedByString:@"&"];
	for (NSString *queryArri in queryArr) {
		NSArray *queryArriArr = [queryArri componentsSeparatedByString:@"="];
		if ([queryArriArr count]==2) {
            [keyMutableArray addObject:[queryArriArr objectAtIndex:0]];
            [valueMutablearray addObject:[[queryArriArr objectAtIndex:1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
		}
	}
    [contentMutableArray addObject:keyMutableArray];
    [contentMutableArray addObject:valueMutablearray];
	return contentMutableArray;
}
@end
