//
//  YHUMusicTool.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//


#import <Foundation/Foundation.h>
@class YHUMusic;

@interface YHUMusicTool : NSObject

+ (NSArray *)musics;

+ (YHUMusic *)playingMusic;

+ (void)setPlayingMusic:(YHUMusic *)playingMusic;

+ (YHUMusic *)nextMusic;

+ (YHUMusic *)previousMusic;

@end
