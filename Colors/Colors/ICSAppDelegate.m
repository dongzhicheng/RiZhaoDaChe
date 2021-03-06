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
  AK:  QAbgrEkXcTktLiwc8qtFo6UVh27gCDYh 
 
 */
#import "ICSAppDelegate.h"
#import "ICSDrawerController.h"
#import "ICSColorsViewController.h"
#import "ICSPlainColorViewController.h"
#import "ICSFistViewController.h"
#import "ICSMainleftTableViewController.h"
#import "ICSDiTuViewController.h"
@implementation ICSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor redColor];
    
    UIStoryboard *leftMainInterce1 = [UIStoryboard storyboardWithName:@"ICSMainleftTableViewController" bundle:nil];
    ICSMainleftTableViewController * leftInterface = [leftMainInterce1 instantiateViewControllerWithIdentifier:@"ICSMainleftTableViewController"];
   
    UIStoryboard * fistftoryBord  = [UIStoryboard storyboardWithName:@"ICSFistViewController" bundle:nil];
    ICSFistViewController *icsFistViewController = [fistftoryBord instantiateViewControllerWithIdentifier:@"ICSFistViewController"];
   
    UIStoryboard *diTuStoryboard = [UIStoryboard storyboardWithName:@"ICSDiTuViewController" bundle:nil];
    ICSDiTuViewController *diTuVC = [diTuStoryboard instantiateViewControllerWithIdentifier:@"ICSDiTuViewController"];
    
    ICSDrawerController *drawer = [[ICSDrawerController alloc] initWithLeftViewController:leftInterface
                                                                     centerViewController:diTuVC];
    self.window.rootViewController = drawer;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
