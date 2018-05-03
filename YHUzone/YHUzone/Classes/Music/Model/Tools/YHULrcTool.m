//
//  YHULrcTool.m
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHULrcTool.h"
#import "YHULrcline.h"

@implementation YHULrcTool

+ (NSArray *)lrcToolWithLrcName:(NSString *)lrcName
{
    // 1.拿到歌词文件的路径
    NSString *lrcPath = [[NSBundle mainBundle] pathForResource:lrcName ofType:nil];
    
    // 2.读取歌词
    NSString *lrcString = [NSString stringWithContentsOfFile:lrcPath encoding:NSUTF8StringEncoding error:nil];
    
    // 3.拿到歌词的数组
    NSArray *lrcArray = [lrcString componentsSeparatedByString:@"\n"];
    
    // 4.遍历每一句歌词,转成模型
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSString *lrclineString in lrcArray) {
        // 拿到每一句歌词
        /*
         [ti:心碎了无痕]
         [ar:张学友]
         [al:]
         */
        // 过滤不需要的歌词的行
        if ([lrclineString hasPrefix:@"[ti:"] || [lrclineString hasPrefix:@"[ar:"] || [lrclineString hasPrefix:@"[al:"] || ![lrclineString hasPrefix:@"["]) {
            continue;
        }
        
        // 将歌词转成模型
        YHULrcLine *lrcLine = [YHULrcLine lrcLineWithLrclineString:lrclineString];
        [tempArray addObject:lrcLine];
    }
    
    return tempArray;
}

@end

