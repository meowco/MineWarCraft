//
//  HistoryOneBGViewController.m
//  History
//
//  Created by 猫儿出墙 on 16/3/19.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "HistoryOneBGViewController.h"

@interface HistoryOneBGViewController ()

@end

@implementation HistoryOneBGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.'
    UIImageView *bgi = [[UIImageView alloc] initWithFrame:self.view.frame];
    bgi.image = [UIImage imageNamed:@"时间线"];
    
    [self.view addSubview:bgi];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
