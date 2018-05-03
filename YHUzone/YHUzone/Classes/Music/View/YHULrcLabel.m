//
//  YHULrcLabel.m
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHULrcLabel.h"

@implementation YHULrcLabel

- (void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    // 1.获取需要画的区域
    CGRect fillRect = CGRectMake(0, 0, self.bounds.size.width * self.progress, self.bounds.size.height);
    
    // 2.设置颜色
    [[UIColor redColor] set];
    
    // 3.添加区域
    UIRectFillUsingBlendMode(fillRect, kCGBlendModeSourceIn);
}


@end

