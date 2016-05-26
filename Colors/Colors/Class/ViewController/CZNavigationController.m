//
//  CZNavigationController.m
//  07-彩票
//
//  Created by apple on 16/05/21.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "CZNavigationController.h"
#import "UIImage+Ex.h"
@interface CZNavigationController ()

@end

@implementation CZNavigationController

- (UIStatusBarStyle)preferredStatusBarStyle {//设置状态栏高亮显示
    return UIStatusBarStyleLightContent;
}

+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearance];
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    bar.translucent = NO; //去掉导航条的半透明效果  -- 如果有透明度，控制器的view有穿透效果。如果没有透明度，控制器的view没有穿透效果
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    [item setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
}
- (void)viewDidLoad {
    [super viewDidLoad];


}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {//重写导航控制器的push方法，viewController要跳转到的控制器
    [self addBackButton:viewController];//跳转之前添加后退按钮
    [super pushViewController:viewController animated:YES];
}
- (void)addBackButton:(UIViewController *)viewController {
    self.interactivePopGestureRecognizer.delegate = (id)self;//设置后退的手势
    viewController.hidesBottomBarWhenPushed = YES;
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"NavBack"] orginalImage] style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    UIBarButtonItem *fixed = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixed.width = -10;
    viewController.navigationItem.leftBarButtonItems = @[fixed,back];
}
- (void)backClick {
    [self popViewControllerAnimated:YES];
}



@end
