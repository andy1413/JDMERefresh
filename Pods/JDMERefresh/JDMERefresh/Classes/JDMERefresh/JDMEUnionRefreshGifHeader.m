//
//  JDMEUnionRefreshGifHeader.m
//  JDMERefreshExample2
//
//  Created by 王方帅 on 17/2/27.
//  Copyright © 2017年 王方帅. All rights reserved.
//

#import "JDMEUnionRefreshGifHeader.h"
#import "SvvGifView.h"
#import "SDWebImageDownloader.h"
#import "NSString+Add.h"
#import "MJRefresh.h"

@interface JDMEUnionRefreshGifHeader()
{
    SvvGifView *_gif1View;
}

@end

@implementation JDMEUnionRefreshGifHeader

-(void)setWebURL:(NSURL *)webURL
{
    if (_webURL != webURL)
    {
        _webURL = webURL;
        
        NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingPathComponent:[webURL.absoluteString md5EncodeString]];
        if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
        {
            [self refreshWebGifWithFilePath:filePath];
        }
        else
        {
            [[SDWebImageDownloader sharedDownloader] downloadImageWithURL:webURL options:0 progress:nil completed:^(UIImage * _Nullable image, NSData * _Nullable data, NSError * _Nullable error, BOOL finished) {
                if (error == nil)
                {
                    
                    [data writeToFile:filePath atomically:YES];
                    [self refreshWebGifWithFilePath:filePath];
                }
            }];
        }
    }
}

-(void)refreshWebGifWithFilePath:(NSString *)filePath
{
    _fileURL = [NSURL fileURLWithPath:filePath];
    
    [_gif1View removeFromSuperview];
    _gif1View = nil;
}

- (SvvGifView *)gifView
{
    if (!_gif1View && _fileURL) {
        SvvGifView *gifView = [[SvvGifView alloc] initWithCenter:CGPointMake(self.widthL/2, self.heightL/2) fileURL:_fileURL];
        [self addSubview:_gif1View = gifView];
    }
    return _gif1View;
}

- (void)placeSubviews
{
    [super placeSubviews];
    
    CGRect rect = self.gifView.frame;
    rect.size = CGSizeMake(kAuto6PHeight(113), kAuto6PHeight(34));
    self.gifView.frame = rect;
    self.gifView.centerX = SCREENWIDTH/2;
    self.gifView.bottomL = self.heightL;
    self.stateLabel.frame = CGRectMake(0, 0, SCREENWIDTH, 30);
    self.gifView.contentMode = UIViewContentModeScaleToFill;
    [self bringSubviewToFront:self.stateLabel];
}

-(void)startAnimating
{
    [_gif1View startGif];
}

-(void)stopAnimating
{
    [_gif1View stopGif];
}

@end
