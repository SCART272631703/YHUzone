//
//  YHULrcLine.m
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHULrcLine.h"

@implementation YHULrcLine

- (instancetype)initWithLrclineString:(NSString *)lrclineString
{
    if (self = [super init]) {
        // [01:05.43]我想就这样牵着你的手不放开
        NSArray *lrcArray = [lrclineString componentsSeparatedByString:@"]"];
        self.text = lrcArray[1];
        NSString *timeString = lrcArray[0];
        self.time = [self timeStringWithString:[timeString substringFromIndex:1]];
    }
    return self;
}
+ (instancetype)lrcLineWithLrclineString:(NSString *)lrclineString
{
    return [[self alloc] initWithLrclineString:lrclineString];
}

#pragma mark - 私有方法
- (NSTimeInterval)timeStringWithString:(NSString *)timeString
{
    // 01:05.43
    NSInteger min = [[timeString componentsSeparatedByString:@":"][0] integerValue];
    NSInteger second = [[timeString substringWithRange:NSMakeRange(3, 2)] integerValue];
    NSInteger haomiao = [[timeString componentsSeparatedByString:@"."][1] integerValue];
    
    return (min * 60 + second + haomiao * 0.01);
}

@end

