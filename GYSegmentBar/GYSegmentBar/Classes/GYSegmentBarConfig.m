//
//  GYSegmentBarConfig.m
//  GYSegmentBar
//
//  Created by GY on 2016/11/26.
//  Copyright © 2016年 GY. All rights reserved.
//

#import "GYSegmentBarConfig.h"

@implementation GYSegmentBarConfig

+ (instancetype)defaultConfig {
    
    GYSegmentBarConfig *config = [[GYSegmentBarConfig alloc] init];
    config.segmentBarBackColor = [UIColor clearColor];
    config.itemFont = [UIFont systemFontOfSize:15];
    config.itemNormalColor = [UIColor lightGrayColor];
    config.itemSelectColor = [UIColor redColor];
    config.indicatorColor = [UIColor redColor];
    config.indicatorHeight = 2;
    config.indicatorExtraW = 10;
    
    return config;
    
}


@end
