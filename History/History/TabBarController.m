//
//  TabBarController.m
//  History
//
//  Created by 猫儿出墙 on 16/3/20.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "TabBarController.h"
#import "HistoryOneBGViewController.h"
#import "Strategy.h"
#import "Forum.h"
#import "Personal.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    HistoryOneBGViewController *history = [HistoryOneBGViewController new];
    Strategy *strategy = [Strategy new];
    Forum *forum = [Forum new];
    Personal *person = [Personal new];
    strategy.tabBarItem.image = [[UIImage imageNamed:@"anniu2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    forum.tabBarItem.image = [[UIImage imageNamed:@"anniu3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    person.tabBarItem.image = [[UIImage imageNamed:@"anniu4"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    history.tabBarItem.image = [[UIImage imageNamed:@"anniu1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    history.tabBarItem.selectedImage = [[UIImage imageNamed:@"anniu1an"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    strategy.tabBarItem.selectedImage = [[UIImage imageNamed:@"anniu2an"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    forum.tabBarItem.selectedImage = [[UIImage imageNamed:@"anniu3an"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    person.tabBarItem.selectedImage = [[UIImage imageNamed:@"anniu4an"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    history.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    strategy.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    person.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    forum.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
    [self addChildViewController:history];
    [self addChildViewController:strategy];
    [self addChildViewController:forum];
    [self addChildViewController:person];
    
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
