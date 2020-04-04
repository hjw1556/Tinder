//
//  RootViewController.m
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import "RootViewController.h"
#import "Login/View/LoginBackgroundView.h"

@interface RootViewController ()<RegistImgDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate> //遵循代理

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
    self.loginView.delegate = self;
    [self.view addSubview:self.loginView];

}

#pragma mark - 选择图片代理方法实现
- (void)selectImg{
    
    NSInteger sourceType = 0;
    
    // 0 - 图库。 1 - 相机。 2 - 相册
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]){
        
        sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    }
    
    //实例化图片来源类型
    UIImagePickerController * pick = [[UIImagePickerController alloc]init];
    pick.allowsEditing = YES;
    pick.delegate = self;
    pick.sourceType = sourceType;
    [self presentViewController:pick animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate实现方法
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    [picker dismissViewControllerAnimated:YES completion:nil];
    UIImage * image = [info objectForKey:UIImagePickerControllerEditedImage];
    self.loginView.headImage.image = image;
    if(!image){
        self.loginView.headLable.hidden = NO;
    }else{
        self.loginView.headLable.hidden = YES;
    }
    
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.loginView.nameText resignFirstResponder];
    [self.loginView.emailText resignFirstResponder];
    [self.loginView.passwordText resignFirstResponder];
    
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
