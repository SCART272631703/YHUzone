//
//  YHUAudioPlayerTool.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface YHUAudioPlayerTool : NSObject

#pragma mark - 播放音乐
// 播放音乐 musicName : 音乐的名称
+ (AVAudioPlayer *)playMusicWithMusicName:(NSString *)musicName;
// 暂停音乐 musicName : 音乐的名称
+ (void)pauseMusicWithMusicName:(NSString *)musicName;
// 停止音乐 musicName : 音乐的名称
+ (void)stopMusicWithMusicName:(NSString *)musicName;

#pragma mark - 音效播放
// 播放声音文件soundName : 音效文件的名称
+ (void)playSoundWithSoundname:(NSString *)soundname;

@end
