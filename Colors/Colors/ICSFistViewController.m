//
//  ICSFistViewController.m
//  Colors
//
//  Created by 董志成 on 16/5/24.
//  Copyright © 2016年 ice cream studios s.r.l. All rights reserved.
//

#import "ICSFistViewController.h"

@interface ICSFistViewController ()

@property (weak, nonatomic) IBOutlet UIButton *runQualificationsApplication;
@property (weak, nonatomic) IBOutlet UIButton *breakRulusNotes;
@property (weak, nonatomic) IBOutlet UIButton *complaintNotes;
@property (weak, nonatomic) IBOutlet UIButton *writeAgreement;
@property (weak, nonatomic) IBOutlet UIButton *reportJuBao;

@end

@implementation ICSFistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    
    
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
