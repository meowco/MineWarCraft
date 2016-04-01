//
//  HistoryOneBGViewController.m
//  History
//
//  Created by 猫儿出墙 on 16/3/19.
//  Copyright © 2016年 猫儿出墙. All rights reserved.
//

#import "HistoryOneBGViewController.h"
#import <Accelerate/Accelerate.h>
#import "smallWindow.h"

@interface HistoryOneBGViewController () <UIScrollViewDelegate>

@end

@implementation HistoryOneBGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [UIScrollView alloc];
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 30, 320, 568-60)];
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
    [buttonThree addTarget:self action:@selector(historyThree) forControlEvents:UIControlEventTouchUpInside];
    [buttonFour addTarget:self action:@selector(historyFour) forControlEvents:UIControlEventTouchUpInside];
    [buttonFive addTarget:self action:@selector(historyFive) forControlEvents:UIControlEventTouchUpInside];
    [buttonSix addTarget:self action:@selector(historySix) forControlEvents:UIControlEventTouchUpInside];
    [buttonSeven addTarget:self action:@selector(historySeven) forControlEvents:UIControlEventTouchUpInside];
    [buttonEight addTarget:self action:@selector(historyEight) forControlEvents:UIControlEventTouchUpInside];
    [buttonNine addTarget:self action:@selector(historyNine) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView addSubview:buttonOne];
    [scrollView addSubview:buttonTwo];
    [scrollView addSubview:buttonThree];
    [scrollView addSubview:buttonFour];
    [scrollView addSubview:buttonFive];
    [scrollView addSubview:buttonSix];
    [scrollView addSubview:buttonSeven];
    [scrollView addSubview:buttonEight];
    [scrollView addSubview:buttonNine];
    CGPoint animationPointOne = CGPointMake(buttonOne.frame.origin.x + buttonOne.frame.origin.y / 2,0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)historyOne {
    smallWindow *VC = [smallWindow new];
    [self.view addSubview:VC.view];
//    VC.view.frame = CGRectMake(35, 30, 259, 414);
//    UIImageView *bgi = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"弹出窗口"]];
//    [VC.view addSubview:bgi];
//    UIImage * image = [UIImage imageNamed:@"历史长图"];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
//    imageView.contentMode=UIViewContentModeScaleAspectFill;
//    imageView.image= [self blurryImage:image withBlurLevel:0.04];
//    imageView.clipsToBounds=YES;
//    [self.view addSubview:imageView];
//    black.view.backgroundColor = [UIColor blackColor];
//    black.view.alpha = 0.7;
//    [self.view addSubview:black.view];
//    [self.view addSubview:VC.view];
//    
//    buttonClose.frame = CGRectMake(232, 50, 26, 29);
//    buttonClose.backgroundColor = [UIColor clearColor];
//    [VC.view addSubview:_buttonClose];
//    [buttonClose addTarget:VC action:@selector(close) forControlEvents:UIControlEventTouchUpInside];
    
}


//
//- (UIImage *)blurryImage:(UIImage *)image withBlurLevel:(CGFloat)blur {
//    if (blur < 0.f || blur > 1.f) {
//        blur = 0.5f;
//    }
//    int boxSize = (int)(blur * 100);
//    boxSize = boxSize - (boxSize % 2) + 1;
//    
//    CGImageRef img = image.CGImage;
//    
//    vImage_Buffer inBuffer, outBuffer;
//    vImage_Error error;
//    
//    void *pixelBuffer;
//    
//    CGDataProviderRef inProvider = CGImageGetDataProvider(img);
//    CFDataRef inBitmapData = CGDataProviderCopyData(inProvider);
//    
//    inBuffer.width = CGImageGetWidth(img);
//    inBuffer.height = CGImageGetHeight(img);
//    inBuffer.rowBytes = CGImageGetBytesPerRow(img);
//    
//    inBuffer.data = (void*)CFDataGetBytePtr(inBitmapData);
//    
//    pixelBuffer = malloc(CGImageGetBytesPerRow(img) *
//                         CGImageGetHeight(img));
//    
//    if(pixelBuffer == NULL)
//        NSLog(@"No pixelbuffer");
//    
//    outBuffer.data = pixelBuffer;
//    outBuffer.width = CGImageGetWidth(img);
//    outBuffer.height = CGImageGetHeight(img);
//    outBuffer.rowBytes = CGImageGetBytesPerRow(img);
//    
//    error = vImageBoxConvolve_ARGB8888(&inBuffer,
//                                       &outBuffer,
//                                       NULL,
//                                       0,
//                                       0,
//                                       boxSize,
//                                       boxSize,
//                                       NULL,
//                                       kvImageEdgeExtend);
//    
//    
//    if (error) {
//        NSLog(@"error from convolution %ld", error);
//    }
//    
//    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
//    CGContextRef ctx = CGBitmapContextCreate(
//                                             outBuffer.data,
//                                             outBuffer.width,
//                                             outBuffer.height,
//                                             8,
//                                             outBuffer.rowBytes,
//                                             colorSpace,
//                                             kCGImageAlphaNoneSkipLast);
//    CGImageRef imageRef = CGBitmapContextCreateImage (ctx);
//    UIImage *returnImage = [UIImage imageWithCGImage:imageRef];
//    
//    CGContextRelease(ctx);
//    CGColorSpaceRelease(colorSpace);
//    
//    free(pixelBuffer);
//    CFRelease(inBitmapData);
//    
//    CGColorSpaceRelease(colorSpace);
//    CGImageRelease(imageRef);
//    
//    return returnImage;
//}

@end
