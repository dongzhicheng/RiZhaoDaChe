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


//初始化的方法，当前类中所有方法调用之前，调用的第一个方法
+ (void)initialize {
    //1 设置导航条的样式
    //获取到当前所有显示的导航条
    UINavigationBar *bar = [UINavigationBar appearance];
    //设置导航条的背景图片
    //UIBarMetricsDefault  设置横屏和竖屏显示的图片
    //UIBarMetricsCompact  横屏显示的图片
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    //设置标题的字体颜色
    [bar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    //去掉导航条的半透明效果  -- 如果有透明度，控制器的view有穿透效果。如果没有透明度，控制器的view没有穿透效果
    bar.translucent = NO;
    
    //2 导航按钮的样式
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    //设置导航按钮的文字颜色和大小
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

//1 设置自定义后退按钮
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
