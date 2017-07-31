//
//  ViewController.m
//  GbMethodManager
//
//  Created by 天轩 on 2017/7/31.
//  Copyright © 2017年 天轩. All rights reserved.
//

#import "ViewController.h"
#import "GbMethodManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   NSLog(@"%@",[GbMethodManager stringNumberToString:@"12.345" WithDotNumber:2]);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
