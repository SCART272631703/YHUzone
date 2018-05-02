//
//  YHAudioPlayerTool.m
//  QQMusic
//
//  Created by yanghu on 2018/4/25.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHAudioPlayerTool.h"

@implementation YHAudioPlayerTool

static NSMutableDictionary* _players;

+ (void)initialize{
    if(!_players)
        _players = [NSMutableDictionary dictionary];
}
+ (AVAudioPlayer*)playMusicWithFileName:(NSString*)fileName{
    if(nil == fileName)
        return nil;
    AVAudioPlayer* player = _players[fileName];
    if(nil == player){
        NSURL* fileURL = [[NSBundle mainBundle]URLForResource:fileName withExtension:nil];
        if(!fileURL)
            return nil;
//        AVAudioPlayer* player = [[AVAudioPlayer alloc]initWithContentsOfURL:fileURL error:nil];  error:在这里定义局部变量。
        player = [[AVAudioPlayer alloc]initWithContentsOfURL:fileURL error:nil];
        [_players setObject:player forKey:fileName];
        [player prepareToPlay];
    }
    [player play];
    return player;
}
@end
