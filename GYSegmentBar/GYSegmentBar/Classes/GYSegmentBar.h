//
//  GYSegmentBar.h
//  GYSegmentBar
//
//  Created by GY on 2016/11/26.
//  Copyright © 2016年 GY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GYSegmentBarConfig.h"

@class GYSegmentBar;
@protocol GYSegmentBarDelegate <NSObject>

/**
 代理方法, 告诉外界, 内部的点击数据

 @param segmentBar segmentBar
 @param toIndex    选中的索引(从0开始)
 @param fromIndex  上一个索引
 */
- (void)segmentBar: (GYSegmentBar *)segmentBar didSelectIndex: (NSInteger)toIndex fromIndex: (NSInteger)fromIndex;

@end


@interface GYSegmentBar : UIView
/**
 快速创建一个选项卡控件

 @param frame frame

 @return 选项卡控件
 */
+ (instancetype)segmentBarWithFrame: (CGRect)frame;
/** 代理 */
@property (nonatomic, weak) id<GYSegmentBarDelegate> delegate;
/** 数据源 */
@property (nonatomic, strong) NSArray <NSString *>*items;
/** 当前选中的索引, 双向设置 */
@property (nonatomic, assign) NSInteger selectIndex;

/** 自定义segmentBar */
- (void)updateWithConfig: (void(^)(GYSegmentBarConfig *config))configBlock;

@end
