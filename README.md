# ActionSheet封装
一行代码引入项目

![img](/Users/lizhen/Documents/学习/ActionSheet封装/ActionSheet.gif)


````
直接调用
- (void)showView
{
    
    NSArray *array = @[@"苹果地图", @"高德地图", @"百度地图"];
    LZActionSheetView *action = [[LZActionSheetView alloc] initWithTitleView:self.headView optionsArr: array cancelTitle:@"取消" cancelBlock:^{
        
    } selectBlock:^(NSInteger index) {
        NSLog(@"点击了第 %ld 个", index);
    }];
    
    [self.view addSubview:action];
}
````

LZActionSheetView.h
````
/**
 ActionSheet 自定义

 @param titleView 头部视图 (可以为空, 默认有一个头部视图)
 @param optionsArr 需要显示的内容数组
 @param cancelTitle 取消名称
 @param cancelBlock 取消回调
 @param selectBlock 选择回调
 */
- (instancetype)initWithTitleView:(UIView *)titleView
                       optionsArr:(NSArray *)optionsArr
                      cancelTitle:(NSString *)cancelTitle
                      cancelBlock:(void(^)())cancelBlock
                      selectBlock:(void(^)(NSInteger))selectBlock;
````


