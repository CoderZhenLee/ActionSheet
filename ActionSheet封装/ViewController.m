//
//  ViewController.m
//  ActionSheet封装
//
//  Created by 李震 on 2017/5/22.
//  Copyright © 2017年 李震. All rights reserved.
//

#import "ViewController.h"
#import "LZActionSheetView.h"

@interface ViewController ()

/** 头部视图 */
@property (nonatomic, strong) UIView *headView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 200, 100, 40);
    [self.view addSubview:button];
    
    [button addTarget:self action:@selector(showView) forControlEvents:UIControlEventTouchUpInside];
}

- (void)showView
{
    
    NSArray *array = @[@"苹果地图", @"高德地图", @"百度地图"];
    LZActionSheetView *action = [[LZActionSheetView alloc] initWithTitleView:self.headView optionsArr: array cancelTitle:@"取消" cancelBlock:^{
        
    } selectBlock:^(NSInteger index) {
        NSLog(@"点击了第 %ld 个", index);
    }];
    
    [self.view addSubview:action];
}

- (UIView *)headView
{
    if (!_headView) {
        _headView = [[UIView alloc] initWithFrame:CGRectMake(10, 0, self.view.frame.size.width-20, 50)];
        _headView.backgroundColor = [UIColor whiteColor];
        
        UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 10, _headView.frame.size.width, 30)];
        titleLabel.text = @"请选择类型, 谢谢!";
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [_headView addSubview:titleLabel];
        
        UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, _headView.frame.size.height-0.5, _headView.frame.size.width, 0.5)];
        lineView.backgroundColor = [UIColor grayColor];
        [_headView addSubview:lineView];
    }
    return _headView;
}

@end
