//
//  YHPlayingViewController.m
//  QQMusic
//
//  Created by yanghu on 2018/4/24.
//  Copyright © 2018年 yanghu. All rights reserved.
//

#import "YHPlayingViewController.h"
//#import <Masonry.h>
#import "YHMusicTool.h"
#import "YHMusic.h"
#import "YHAudioPlayerTool.h"
@interface YHPlayingViewController () <AVAudioPlayerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *albumView;
@property (weak, nonatomic) IBOutlet UISlider *progressSlider;
@property (nonatomic, strong) AVAudioPlayer *currentPlayer;

@end

@implementation YHPlayingViewController

static NSMutableDictionary* _players;

- (void)viewDidLoad {
    [super viewDidLoad];
//     Do any additional setup after loading the view.
//    1.添加毛玻璃效果
    [self setUpBlurImage];
//    2.设置滑动片的背景图片
    [self.progressSlider setThumbImage:[UIImage imageNamed:@"player_slider_playback_thumb"] forState:UIControlStateNormal];
    //3.开始播放音乐
    YHMusic* music = [YHMusicTool currentPlayingMusic];
    NSLog(@"music:%@",music.filename);
    AVAudioPlayer* currentPlayer = [YHAudioPlayerTool playMusicWithFileName:music.filename];
    currentPlayer.delegate = self;
    self.currentPlayer = currentPlayer;
}

- (void)setUpBlurImage{
    UIToolbar* toolBar = [[UIToolbar alloc]init];
    [toolBar setBarStyle:UIBarStyleBlack];
    [_albumView addSubview:toolBar];
//    [toolBar mas_makeConstraints:^(MASConstraintMaker *make){
//        make.edges.mas_equalTo(_albumView);
//    }];
    toolBar.frame = _albumView.bounds;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
