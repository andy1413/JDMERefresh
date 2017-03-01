//
//  JDMEViewController.m
//  JDMERefresh
//
//  Created by 王方帅 on 02/28/2017.
//  Copyright (c) 2017 王方帅. All rights reserved.
//

#import "JDMEViewController.h"
#import <JDMERefresh.h>
#import <SDWebImage/UIImage+GIF.h>

@interface JDMEViewController ()
{
    UITableView         *_mainTableView;
    JDMEUnionRefreshGifHeader  *_header;
}

@end

@implementation JDMEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
    _mainTableView.delegate = self;
    _mainTableView.dataSource = self;
    [self.view addSubview:_mainTableView];
    
    _header = [JDMEUnionRefreshGifHeader headerWithRefreshingBlock:^{
        //[((MJRefreshGifHeader *)(_mainTableView.mj_header)) startAnimating];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [_header endRefreshing];
        });
    }];
    _header.lastUpdatedTimeLabel.hidden= YES;//如果不隐藏这个会默认 图片在最左边不是在中间
    _header.stateLabel.hidden = NO;
    
    _header.fileURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"refreshHeader" ofType:@"gif"]];
    //    _header.webURL = [NSURL URLWithString:@"http://img.zcool.cn/community/0158d756f357396ac7257d206b7371.gif"];
    _mainTableView.mj_header = _header;
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y < 0)
    {
        [_header startAnimating];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"UITableViewCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
