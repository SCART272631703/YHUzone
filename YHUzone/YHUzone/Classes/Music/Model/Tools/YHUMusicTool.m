//
//  YHUMusicTool.m
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHUMusicTool.h"
#import "YHUMusic.h"
#import <MJExtension.h>

@implementation YHUMusicTool

static NSArray *_musics;
static YHUMusic *_playingMusic;

+ (void)initialize
{
    if (_musics == nil) {
        _musics = [YHUMusic mj_objectArrayWithFilename:@"Musics.plist"];
    }
    
    if (_playingMusic == nil) {
        _playingMusic = _musics[1];
    }
}

+ (NSArray *)musics
{
    return _musics;
}

+ (YHUMusic *)playingMusic
{
    return _playingMusic;
}

+ (void)setPlayingMusic:(YHUMusic *)playingMusic
{
    _playingMusic = playingMusic;
}

+ (YHUMusic *)nextMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger nextIndex = ++currentIndex;
    if (nextIndex >= _musics.count) {
        nextIndex = 0;
    }
    YHUMusic *nextMusic = _musics[nextIndex];
    
    return nextMusic;
}

+ (YHUMusic *)previousMusic
{
    // 1.拿到当前播放歌词下标值
    NSInteger currentIndex = [_musics indexOfObject:_playingMusic];
    
    // 2.取出下一首
    NSInteger previousIndex = --currentIndex;
    if (previousIndex < 0) {
        previousIndex = _musics.count - 1;
    }
    YHUMusic *previousMusic = _musics[previousIndex];
    
    return previousMusic;
}

@end

