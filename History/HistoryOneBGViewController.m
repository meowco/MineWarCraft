//
//  HistoryOneBGViewController.m
//  History
//
//  Created by 猫儿出墙 on 16/3/19.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "HistoryOneBGViewController.h"
#import <Accelerate/Accelerate.h>
#import <sqlite3.h>

@interface HistoryOneBGViewController () <UIScrollViewDelegate, UIWebViewDelegate>

@property (strong, nonatomic) UIView *smallWindow;
@property (strong, nonatomic) UIView *blackView;
@property (strong, nonatomic) UIButton *buttonClose;

@end

@implementation HistoryOneBGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 30, 320, 568-60)];
    scrollView.delegate = self;
    UIImage * image = [UIImage imageNamed:@"历史长图"];
    UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
    [scrollView addSubview:imageView];
    
    scrollView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    scrollView.contentSize = imageView.bounds.size;
    UIImageView *titou = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"题头"]];
    scrollView.showsVerticalScrollIndicator = NO;
    
    [self.view addSubview:scrollView];
    [self.view addSubview:titou];
    
    
    
    UIButton *buttonOne = [[UIButton alloc] initWithFrame:CGRectMake(160, 150, 114, 60)];
    UIButton *buttonTwo = [[UIButton alloc] initWithFrame:CGRectMake(160, 242, 114, 60)];
    UIButton *buttonThree = [[UIButton alloc] initWithFrame:CGRectMake(160, 335, 114, 60)];
    UIButton *buttonFour = [[UIButton alloc] initWithFrame:CGRectMake(159, 430, 114, 60)];
    UIButton *buttonFive = [[UIButton alloc] initWithFrame:CGRectMake(159, 528, 114, 60)];
    UIButton *buttonSix = [[UIButton alloc] initWithFrame:CGRectMake(159, 625, 114, 60)];
    UIButton *buttonSeven = [[UIButton alloc] initWithFrame:CGRectMake(159, 723, 114, 60)];
    UIButton *buttonEight = [[UIButton alloc] initWithFrame:CGRectMake(159, 822, 114, 60)];
    UIButton *buttonNine = [[UIButton alloc] initWithFrame:CGRectMake(159, 933, 114, 60)];
    buttonNine.backgroundColor = [UIColor clearColor];
    buttonEight.backgroundColor = [UIColor clearColor];
    buttonSeven.backgroundColor = [UIColor clearColor];
    buttonSix.backgroundColor = [UIColor clearColor];
    buttonFive.backgroundColor = [UIColor clearColor];
    buttonFour.backgroundColor = [UIColor clearColor];
    buttonTwo.backgroundColor = [UIColor clearColor];
    buttonOne.backgroundColor = [UIColor clearColor];
    buttonThree.backgroundColor = [UIColor clearColor];
    [buttonOne addTarget:self action:@selector(historyOne) forControlEvents:UIControlEventTouchUpInside];
    [buttonTwo addTarget:self action:@selector(historyTwo) forControlEvents:UIControlEventTouchUpInside];
//    [buttonThree addTarget:self action:@selector(historyThree) forControlEvents:UIControlEventTouchUpInside];
//    [buttonFour addTarget:self action:@selector(historyFour) forControlEvents:UIControlEventTouchUpInside];
//    [buttonFive addTarget:self action:@selector(historyFive) forControlEvents:UIControlEventTouchUpInside];
//    [buttonSix addTarget:self action:@selector(historySix) forControlEvents:UIControlEventTouchUpInside];
//    [buttonSeven addTarget:self action:@selector(historySeven) forControlEvents:UIControlEventTouchUpInside];
//    [buttonEight addTarget:self action:@selector(historyEight) forControlEvents:UIControlEventTouchUpInside];
//    [buttonNine addTarget:self action:@selector(historyNine) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView addSubview:buttonOne];
    [scrollView addSubview:buttonTwo];
    [scrollView addSubview:buttonThree];
    [scrollView addSubview:buttonFour];
    [scrollView addSubview:buttonFive];
    [scrollView addSubview:buttonSix];
    [scrollView addSubview:buttonSeven];
    [scrollView addSubview:buttonEight];
    [scrollView addSubview:buttonNine];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)historyOne {
    _smallWindow = [UIView new];
    _blackView = [UIView new];
    _smallWindow.frame = self.view.frame;
    UIImageView *black = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"black"]];
    UIImageView *smallW = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"弹出窗口"]];
    _blackView.frame = self.view.frame;
    smallW.frame = CGRectMake(35, 30, 259, 414);
    _blackView.alpha = 0.7;
    [_blackView addSubview:black];
    [_smallWindow addSubview:smallW];
    _buttonClose = [UIButton new];
    _buttonClose.frame = CGRectMake(267, 79, 26, 29);
    _buttonClose.backgroundColor = [UIColor clearColor];
    [_smallWindow addSubview:_buttonClose];
    [_buttonClose addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_blackView];
    [self.view addSubview:_smallWindow];
    UIWebView *textView = [[UIWebView alloc] initWithFrame:CGRectMake(60, 125, 207, 295)];
    NSString *htmlString = [[NSBundle mainBundle] pathForResource:@"兽人与人类" ofType:@"html"];
    NSError *error;
    NSString *htmlS = [NSString stringWithContentsOfFile:htmlString encoding:NSUTF8StringEncoding error:&error];
    [textView loadHTMLString:htmlS baseURL:nil];
    [textView setOpaque:NO];
    textView.backgroundColor = [UIColor clearColor];
    [_smallWindow addSubview:textView];
    
    _smallWindow.transform = CGAffineTransformMakeScale(0, 0);
    [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(1.2, 1.2);} completion:^(BOOL finish) {
        [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(0.9, 0.9);} completion:^(BOOL finish) {
            [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(1, 1);} completion:^(BOOL finish){}];
        }];
    }];
}

- (void)close {
    [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(1.2, 1.2);} completion:^(BOOL finish) {
        [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(0.1, 0.1);} completion:^(BOOL finish) {
            [_smallWindow removeFromSuperview];
            [_blackView removeFromSuperview];
                }];
    }];
    
}

- (void)historyTwo {
    _smallWindow = [UIView new];
    _blackView = [UIView new];
    _smallWindow.frame = self.view.frame;
    UIImageView *black = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"black"]];
    UIImageView *smallW = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"弹出窗口"]];
    black.frame = self.view.frame;
    smallW.frame = CGRectMake(35, 30, 259, 414);
    black.alpha = 0.7;
    [_blackView addSubview:black];
    [_smallWindow addSubview:smallW];
    _buttonClose = [UIButton new];
    _buttonClose.frame = CGRectMake(267, 79, 26, 29);
    _buttonClose.backgroundColor = [UIColor clearColor];
    [_smallWindow addSubview:_buttonClose];
    [_buttonClose addTarget:self action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_blackView];
    [self.view addSubview:_smallWindow];
    UIWebView *textView = [[UIWebView alloc] initWithFrame:CGRectMake(60, 125, 207, 295)];
    NSString *htmlString = [[NSBundle mainBundle] pathForResource:@"黑暗之潮" ofType:@"html"];
    NSError *error;
    NSString *htmls = [NSString stringWithContentsOfFile:htmlString encoding:NSUTF8StringEncoding error:&error];
    [textView loadHTMLString:htmls baseURL:nil];
    [textView setOpaque:NO];
    textView.backgroundColor = [UIColor clearColor];
    [_smallWindow addSubview:textView];
    _smallWindow.transform = CGAffineTransformMakeScale(0, 0);
    [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(1.2, 1.2);} completion:^(BOOL finish) {
        [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(0.9, 0.9);} completion:^(BOOL finish) {
            [UIView animateWithDuration:0.3 animations:^{_smallWindow.transform = CGAffineTransformMakeScale(1, 1);} completion:^(BOOL finish){}];
        }];
    }];
}


@end
