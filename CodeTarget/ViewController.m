//
//  ViewController.m
//  CodeTarget
//
//  Created by joker on 2019/1/21.
//  Copyright © 2019 joker. All rights reserved.
//

#import "ViewController.h"
#import "CodeTargetManager.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 无法直接打印storyboard创建的视图
    NSLog(@"%p: %@",self.view, [[CodeTargetManager shareInstance] getStackSymbolsForView:self.view]);
    
    UILabel *test = [UILabel new];
    test.backgroundColor = UIColor.redColor;
    test.text = @"test";
    test.center = self.view.center;
    [test sizeToFit];
    [self.view addSubview:test];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushVC)];
    [test addGestureRecognizer:tap];
    test.userInteractionEnabled = YES;
    
    NSLog(@"%p: %@",self.view, [[CodeTargetManager shareInstance] getStackSymbolsForView:test]);
}


-(void)pushVC {
    
    TestViewController *vc = [[TestViewController alloc] init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
