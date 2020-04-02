//
//  RootViewController.m
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import "RootViewController.h"
#import "Login/View/LoginBackgroundView.h"

@interface RootViewController ()

//登录界面背景图
@property (nonatomic, strong) LoginBackgroundView * loginView;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createLoginView];
    // Do any additional setup after loading the view.
}


//初始化背景
- (void)createLoginView{
    self.loginView = [[LoginBackgroundView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.loginView];

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
