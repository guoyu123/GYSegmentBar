//
//  GYSegmentBarConfig.h
//  GYSegmentBar
//
//  Created by GY on 2016/11/26.
//  Copyright © 2016年 GY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GYSegmentBarConfig : NSObject


+ (instancetype)defaultConfig;

/** 选项卡背景颜色 */
@property (nonatomic, strong) UIColor *segmentBarBackColor;
/** 选项卡文字颜色 */
@property (nonatomic, strong) UIColor *itemNormalColor;
/** 选中时文字颜色 */
@property (nonatomic, strong) UIColor *itemSelectColor;
/** 文字大小 */
@property (nonatomic, strong) UIFont *itemFont;
/** 指示器颜色 */
@property (nonatomic, strong) UIColor *indicatorColor;
/** 指示器高度 */
@property(nonatomic, assign) CGFloat indicatorHeight;
/** 指示器额外宽度 */
@property (nonatomic, assign) CGFloat indicatorExtraW;



@end
