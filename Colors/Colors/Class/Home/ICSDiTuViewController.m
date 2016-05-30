//
//  ICSDiTuViewController.m
//  Colors
//
//  Created by 董志成 on 16/5/26.
//  Copyright © 2016年 ice cream studios s.r.l. All rights reserved.
//

#import "ICSDiTuViewController.h"
#import "ICSDrawerController.h"

@interface ICSDiTuViewController ()<ICSDrawerControllerPresenting>

@property (strong, nonatomic) IBOutlet UIButton *openDrawerButton;
@property (weak , nonatomic)ICSDrawerController * drawer;

@end

@implementation ICSDiTuViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.openDrawerButton addTarget:self action:@selector(openDrawer:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)openDrawer:(id)sender
{
    [self.drawer open];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)drawerControllerWillOpen:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = NO;
}

- (void)drawerControllerDidClose:(ICSDrawerController *)drawerController
{
    self.view.userInteractionEnabled = YES;
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
