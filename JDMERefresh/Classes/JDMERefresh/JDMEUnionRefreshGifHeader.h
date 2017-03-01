//
//  JDMEUnionRefreshGifHeader.h
//  JDMERefreshExample2
//
//  Created by 王方帅 on 17/2/27.
//  Copyright © 2017年 王方帅. All rights reserved.
//

@class SvvGifView;
#import "MJRefresh.h"
@interface JDMEUnionRefreshGifHeader : MJRefreshGifHeader

@property (strong,nonatomic) NSURL   *fileURL;
@property (strong,nonatomic) NSURL   *webURL;

-(void)startAnimating;

-(void)stopAnimating;

@end
