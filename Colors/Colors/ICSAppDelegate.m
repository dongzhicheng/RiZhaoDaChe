//
//  ICSAppDelegate.m
//
//  Created by Vito Modena
//
//  Copyright (c) 2014 ice cream studios s.r.l. - http://icecreamstudios.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to
//  use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
//  the Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
//  IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
//  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
/*
 //    NSArray *colors = @[[UIColor colorWithRed:237.0f/255.0f green:195.0f/255.0f blue:0.0f/255.0f alpha:1.0f],
 //                        [UIColor colorWithRed:237.0f/255.0f green:147.0f/255.0f blue:0.0f/255.0f alpha:1.0f],
 //                        [UIColor colorWithRed:237.0f/255.0f green:9.0f/255.0f blue:0.0f/255.0f alpha:1.0f]//暂时提供左侧抽屉数据的数组
 //                        ];
 self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
 self.window.backgroundColor = [UIColor blackColor];
 
 
 //    ICSColorsViewController *colorsVC = [[ICSColorsViewController alloc] initWithColors:colors];
 
 ICSPlainColorViewController *plainColorVC = [[ICSPlainColorViewController alloc] init];
 UINavigationController * navColorVC = [[UINavigationController alloc] initWithRootViewController:plainColorVC];
 
 //    plainColorVC.view.backgroundColor = colors[0];
 UIStoryboard * fistftoryBord  = [UIStoryboard storyboardWithName:@"ICSFistViewController" bundle:nil];
 ICSFistViewController *icsFistViewController = [fistftoryBord instantiateViewControllerWithIdentifier:@"ICSFistViewController"];
 ICSDrawerController *drawer = [[ICSDrawerController alloc] initWithLeftViewController:navColorVC
 centerViewController:icsFistViewController];
 UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:drawer];
 
 self.window.rootViewController = nav;
 
 
 [self.window makeKeyAndVisible];
 return YES;
 
 */
//    ICSPlainColorViewController *plainColorVC = [[ICSPlainColorViewController alloc] init];
//    UINavigationController * navColorVC = [[UINavigationController alloc] initWithRootViewController:plainColorVC];


//    ICSMainleftTableViewController * leftInterface = [[ICSMainleftTableViewController alloc] init];
//    UINavigationController * leftMainInterNav = [[UINavigationController alloc] initWithRootViewController:leftInterface];

#import "ICSAppDelegate.h"
#import "ICSDrawerController.h"
#import "ICSColorsViewController.h"
#import "ICSPlainColorViewController.h"
#import "ICSFistViewController.h"
#import "ICSMainleftTableViewController.h"

@implementation ICSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor blackColor];
    UIStoryboard *leftMainInterce1 = [UIStoryboard storyboardWithName:@"ICSMainleftTableViewController" bundle:nil];
    ICSMainleftTableViewController * leftInterface = [leftMainInterce1 instantiateViewControllerWithIdentifier:@"ICSMainleftTableViewController"];
    UIStoryboard * fistftoryBord  = [UIStoryboard storyboardWithName:@"ICSFistViewController" bundle:nil];
    ICSFistViewController *icsFistViewController = [fistftoryBord instantiateViewControllerWithIdentifier:@"ICSFistViewController"];
    ICSDrawerController *drawer = [[ICSDrawerController alloc] initWithLeftViewController:leftInterface
                                                                     centerViewController:icsFistViewController];
    UINavigationController * nav = [[UINavigationController alloc] initWithRootViewController:drawer];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
