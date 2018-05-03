//
//  YHULrcView.h
//  YHUzone
//
//  Created by yanghu on 2018/5/3.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YHULrcLabel;

@interface YHULrcView : UIScrollView

@property (nonatomic, copy) NSString *lrcName;

/** 当前播放的时间 */
@property (nonatomic, assign) NSTimeInterval currentTime;

/** 外面歌词的Label */
@property (nonatomic, weak) YHULrcLabel *lrcLabel;

/** 当前歌曲的总时长 */
@property (nonatomic, assign) NSTimeInterval duration;

@end
