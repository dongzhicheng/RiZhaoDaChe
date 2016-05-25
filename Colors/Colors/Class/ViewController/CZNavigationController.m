//
//  CZNavigationController.m
//  07-彩票
//
//  Created by apple on 15/11/26.
//  Copyright © 2015年 itcast. All rights reserved.
//

#import "CZNavigationController.h"
#import "UIImage+Ex.h"
@interface CZNavigationController ()

@end

@implementation CZNavigationController

//设置状态栏高亮显示
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

+ (void)initialize {

    UINavigationBar *bar = [UINavigationBar appearance];

    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];

    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //去掉导航条的半透明效果  -- 如果有透明度，控制器的view有穿透效果。如果没有透明度，控制器的view没有穿透效果
    bar.translucent = NO;
    
    UIBarButtonItem *item = [UIBarButtonItem appearance];

    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
}

//重写导航控制器的push方法，viewController要跳转到的控制器
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {

    
    //跳转之前添加后退按钮
    [self addBackButton:viewController];
    
    [super pushViewController:viewController animated:YES];
}

- (void)addBackButton:(UIViewController *)viewController {
    //设置后退的手势
    self.interactivePopGestureRecognizer.delegate = (id)self;
    
    //当push的时候隐藏底部的tabBar
    viewController.hidesBottomBarWhenPushed = YES;
    
    //自定义后退按钮
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"NavBack"] orginalImage] style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    //固定的fixed  固定的间距
    UIBarButtonItem *fixed = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixed.width = -10;
    
    viewController.navigationItem.leftBarButtonItems = @[fixed,back];
}

//点击自定义回退按钮
- (void)backClick {
    //弹到上一个控制器
    [self popViewControllerAnimated:YES];
}



@end
