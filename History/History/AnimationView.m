//
//  ViewController.m
//  History
//
//  Created by 猫儿出墙 on 16/3/19.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "AnimationView.h"
#import "TabBarController.h"
#import  <AVFoundation/AVFoundation.h>

@interface AnimationView ()

@end

@implementation AnimationView : UIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"片头" ofType:@"mp4"];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    AVAsset *movieAsset = [AVURLAsset URLAssetWithURL:url options:nil];
    AVPlayerItem *playerItem = [AVPlayerItem playerItemWithAsset:movieAsset];
    AVPlayer *player = [AVPlayer playerWithPlayerItem:playerItem];
    AVPlayerLayer *playerlayer = [AVPlayerLayer playerLayerWithPlayer:player];
    playerlayer.frame = self.view.layer.bounds;
    [self.view.layer addSublayer:playerlayer];
    [player play];
    [NSTimer scheduledTimerWithTimeInterval:7 target:self selector:@selector(suiyi) userInfo:nil repeats:NO];

}

- (void)suiyi{
    TabBarController *tabBar = [TabBarController new];
    [self presentViewController:tabBar animated:YES completion:nil];
    NSLog(@"2333");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
