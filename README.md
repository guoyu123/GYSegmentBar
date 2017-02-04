# GYSegmentBar
仿百思不得姐，内涵段子等选项卡控件
代码精简，使用方便，只需要为选项卡添加数据源以及子控制器数组即可，同时支持对选项卡的自定义设计。

#### 部分代码，具体实现参考demo
```objective-c
#import "GYSementBarVC.h"
```
...
NSArray *items = @[@"直播", @"推荐", @"视频", @"段友秀", @"图片", @"段子", @"精华", @"同城", @"游戏"];

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
...
```
