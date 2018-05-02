//
//  YHMusicTool.m
//  QQMusic
//
//  Created by yanghu on 2018/4/25.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHMusicTool.h"
#import <MJExtension.h>
#import "YHMusic.h"
@implementation YHMusicTool

static YHMusic* _playingMusic;
static NSArray* _musics;

+(void)initialize{
    if(!_musics){
        _musics = [YHMusic mj_objectArrayWithFilename:@"Musics.plist"];
    }
    if(!_playingMusic)
        _playingMusic = _musics[1];
}

+ (YHMusic*)currentPlayingMusic{
    return _playingMusic;
}

@end
