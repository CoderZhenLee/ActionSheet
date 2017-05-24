//
//  LZActionSheetView.h
//  ActionSheet封装
//
//  Created by 李震 on 2017/5/22.
//  Copyright © 2017年 李震. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LZActionSheetView : UIView


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

@end
