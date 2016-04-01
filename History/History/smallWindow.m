//
//  smallWindow.m
//  History
//
//  Created by 猫儿出墙 on 16/4/1.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "smallWindow.h"

@interface smallWindow ()

@property (strong, nonatomic) UIButton *buttonClose;

@end

@implementation smallWindow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *black = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"black"]];
    UIImageView *smallW = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"弹出窗口"]];
    black.frame = self.view.frame;
    smallW.frame = CGRectMake(35, 30, 259, 414);
    black.alpha = 0.7;
    [self.view addSubview:black];
    [self.view addSubview:smallW];
    _buttonClose.frame = CGRectMake(232, 50, 26, 29);
    _buttonClose.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_buttonClose];
    
    

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
