//
//  TestViewController.m
//  CodeTarget
//
//  Created by joker on 2019/1/23.
//  Copyright © 2019 joker. All rights reserved.
//

#import "TestViewController.h"
#import "CodeTargetManager.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%p: %@",self.view, [[CodeTargetManager shareInstance] getStackSymbolsForView:self.view]);
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
