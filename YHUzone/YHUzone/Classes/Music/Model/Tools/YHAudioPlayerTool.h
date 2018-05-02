//
//  YHAudioPlayerTool.h
//  QQMusic
//
//  Created by yanghu on 2018/4/25.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface YHAudioPlayerTool : NSObject

+ (AVAudioPlayer*)playMusicWithFileName:(NSString*)fileName;

@end
