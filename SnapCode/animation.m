//
//  animation.m
//  SnapCode
//
//  Created by Reshma Zachariah on 10/3/15.
//  Copyright © 2015 Reshma Zachariah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIViewController.h>
#import <UIKit/UITableView.h>
#import <UIKit/UIImageView.h>

@interface animatedView : UIImageView

@implementation animatedView
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Load images
    NSArray *imageNames = @[@"loadingscreen0.png", @"loadingscreen1.png", @"loadingscreen2.png", @"loadingscreen3.png"];
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    for (int i = 0; i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }
    
    // Normal Animation
    UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 95, 86, 193)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 0.5;
    
    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];
}

