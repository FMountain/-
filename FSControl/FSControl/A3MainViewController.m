//
//  A3MainViewController.m
//  FSControl
//
//  Created by mac on 15/11/22.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "A3MainViewController.h"
#import "A3OneViewController.h"
#import "A3TwoViewController.h"
#import "A3ThreeViewController.h"

#define A3ViewFrame  CGRectMake(0, 60, self.view.frame.size.width, self.view.frame.size.height - 60)
@interface A3MainViewController ()
/** 当前正在显示的控制器 */
@property (nonatomic,strong)UIViewController *showingVc;
@end

@implementation A3MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    //添加子控制器
    [self addChildViewController:[[A3OneViewController alloc] init]];
    [self addChildViewController:[[A3TwoViewController alloc] init]];
    [self addChildViewController:[[A3ThreeViewController alloc] init]];
    
    //有几个子控制器
    NSLog(@"%@",self.childViewControllers);
    
    //默认点击下标是0 的控制器.
    [self switchToVcAtIndex:0];
    
}

- (IBAction)clickBtn0:(id)sender {
   
    [self switchToVcAtIndex:0];
}

- (IBAction)clickBtn1:(id)sender {
    [self switchToVcAtIndex:1];
}

- (IBAction)clickBtn2:(id)sender {
    [self switchToVcAtIndex:2];
}

- (void)switchToVcAtIndex:(int)index
{
    //添加
    UIViewController *willShowVc = self.childViewControllers[index];
    willShowVc.view.frame = A3ViewFrame;
    [self.view addSubview:willShowVc.view];
    
    //移除
    [self.showingVc.view removeFromSuperview];
    
    self.showingVc = willShowVc;
}

@end
