//
//  CALayer+YHUPauseAimate.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (YHUPauseAimate)
// 暂停动画
- (void)pauseAnimate;

// 恢复动画
- (void)resumeAnimate;
@end
