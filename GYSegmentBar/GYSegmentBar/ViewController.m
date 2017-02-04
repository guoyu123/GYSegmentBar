//
//  ViewController.m
//  GYSegmentBar
//
//  Created by ios on 2017/2/4.
//  Copyright © 2017年 GY. All rights reserved.
//

#import "ViewController.h"
#import "GYSementBarVC.h"

@interface ViewController ()

@property (nonatomic, weak) GYSementBarVC *segmentBarVC;

@end

@implementation ViewController

- (GYSementBarVC *)segmentBarVC {
    if (!_segmentBarVC) {
        GYSementBarVC *vc = [[GYSementBarVC alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.segmentBarVC.segmentBar.frame = CGRectMake(0, 64, self.view.frame.size.width, 35);
    self.segmentBarVC.segmentBar.backgroundColor = [UIColor greenColor];
    self.segmentBarVC.view.frame = self.view.bounds;
    [self.view addSubview:self.segmentBarVC.view];
    
    NSArray *items = @[@"直播", @"推荐", @"视频", @"段友秀", @"图片", @"段子", @"精华", @"同城", @"游戏"];
    
    // 添加几个自控制器
    // 在contentView, 展示子控制器的视图内容
    
    UIViewController *vc1 = [[UIViewController alloc] init];
    vc1.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc4 = [[UIViewController alloc] init];
    vc4.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc5 = [[UIViewController alloc] init];
    vc5.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc6 = [[UIViewController alloc] init];
    vc6.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc7 = [[UIViewController alloc] init];
    vc7.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc8 = [[UIViewController alloc] init];
    vc8.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    UIViewController *vc9 = [[UIViewController alloc] init];
    vc9.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255) / 255.0 green:arc4random_uniform(255) / 255.0 blue:arc4random_uniform(255) / 255.0 alpha:1.0];
    
    
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3, vc4, vc5, vc6, vc7, vc8, vc9]];
    
    
    [self.segmentBarVC.segmentBar updateWithConfig:^(GYSegmentBarConfig *config) {
        
        config.segmentBarBackColor = [UIColor cyanColor];
        config.itemNormalColor = [UIColor brownColor];
        config.itemSelectColor = [UIColor yellowColor];
        config.itemFont = [UIFont systemFontOfSize:13];
        config.indicatorHeight = 2;
        config.indicatorColor = [UIColor redColor];
        config.indicatorExtraW = 0;
        
    }];
}

@end
