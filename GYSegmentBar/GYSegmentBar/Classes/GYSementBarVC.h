//
//  GYSementBarVC.h
//  GYSegmentBar
//
//  Created by GY on 2016/11/26.
//  Copyright © 2016年 GY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GYSegmentBar.h"
@interface GYSementBarVC : UIViewController


@property (nonatomic, weak) GYSegmentBar *segmentBar;

/**
 将数据源与子控制器传入进行展示
 
 @param items 选项卡上面的数据源（标题数组）
 @param childVCs 子控制器
 */
- (void)setUpWithItems: (NSArray <NSString *>*)items childVCs: (NSArray <UIViewController *>*)childVCs;

@end
