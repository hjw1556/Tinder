//
//  LoginBackgroundView.m
//  Tinder
//
//  Created by 黄佳玮 on 2020/4/2.
//  Copyright © 2020 黄佳玮. All rights reserved.
//

#import "LoginBackgroundView.h"
#import "SDAutoLayout.h"
#import "RegisteredTool.h"

@implementation LoginBackgroundView


-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self makeLoginBackgroundView];
        [self makeLoginView];
    }
    return self;
}

//懒加载
- (UIImageView *)headImage{
    if(!_headImage){
        _headImage = [[UIImageView alloc]init];
        _headImage.backgroundColor = [UIColor whiteColor];
        //设置圆角
        _headImage.layer.masksToBounds = YES;
        _headImage.layer.cornerRadius = 10;
        //允许交互
        _headImage.userInteractionEnabled = YES;
        UITapGestureRecognizer * tapGues = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickImg:)];
        [_headImage addGestureRecognizer:tapGues];
        
    }
    return _headImage;
}

- (UILabel *)headLable{
    if(!_headLable){
        _headLable = [[UILabel alloc]init];
        _headLable.text = @"Select Photo";
        _headLable.font = [UIFont systemFontOfSize:23 weight:1];
        _headLable.textAlignment = NSTextAlignmentCenter;
    }
    return _headLable;
}

- (UITextField *)nameText{
    if(!_nameText){
        _nameText = [[UITextField alloc]init];
        _nameText.backgroundColor = [UIColor whiteColor];
        //设置圆角
        _nameText.layer.masksToBounds = YES;
        _nameText.layer.cornerRadius = 20;
        _nameText.placeholder = @"Enter full name";
        _nameText.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _nameText.leftViewMode = UITextFieldViewModeAlways;
        _nameText.font = [UIFont systemFontOfSize:14];
        _nameText.tag = 100;
        _nameText.delegate = self;
    }
    return _nameText;
}

- (UITextField *)emailText{
    if(!_emailText){
        _emailText = [[UITextField alloc]init];
        _emailText.backgroundColor = [UIColor whiteColor];
        //设置圆角
        _emailText.layer.masksToBounds = YES;
        _emailText.layer.cornerRadius = 20;
        _emailText.placeholder = @"Enter email";
        _emailText.font = [UIFont systemFontOfSize:14];
        _emailText.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _emailText.leftViewMode = UITextFieldViewModeAlways;
        _emailText.tag = 101;
        _emailText.delegate = self;
    }
    return _emailText;
}

-(UITextField *)passwordText{
    if(!_passwordText){
        _passwordText = [[UITextField alloc]init];
        _passwordText.backgroundColor = [UIColor whiteColor];
        //设置圆角
        _passwordText.layer.masksToBounds = YES;
        _passwordText.layer.cornerRadius = 20;
        _passwordText.placeholder = @"Enter password";
        _passwordText.font = [UIFont systemFontOfSize:14];
        _passwordText.leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 20, 50)];
        _passwordText.leftViewMode = UITextFieldViewModeAlways;
        _passwordText.tag = 102;
        _passwordText.delegate = self;
        _passwordText.secureTextEntry = YES;
    }
    return _passwordText;
}

- (UIButton *)regButton{
    if(!_regButton){
        _regButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _regButton.backgroundColor = [UIColor colorWithRed:0.8 green:0 blue:0.3 alpha:1];
        [_regButton setTitle:@"Register" forState:UIControlStateNormal];
        [_regButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _regButton.titleLabel.font = [UIFont systemFontOfSize:15 weight:1];
        _regButton.layer.masksToBounds = YES;
        _regButton.layer.cornerRadius = 20;
        
    }
    return _regButton;
}

- (UIButton *)loginButton{
    if(!_loginButton){
        _loginButton = [[UIButton alloc]init];
        [_loginButton setTitle:@"Go to Login" forState:UIControlStateNormal];
        [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _loginButton.titleLabel.font = [UIFont systemFontOfSize: 13 weight:1];
    }
    return _loginButton;
}


//初始化背景
- (void)makeLoginBackgroundView{

    //渐变器
    CAGradientLayer * gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSMutableArray arrayWithObjects:(id)[UIColor colorWithRed:250/255.0 green:94/255.0 blue:99/255.0 alpha:1].CGColor,(id)[UIColor colorWithRed:227/255.0 green:40/255.0 blue:117/255.0 alpha:1].CGColor, nil];
    //渐变
    gradient.startPoint = CGPointMake(0, 0);
    gradient.endPoint = CGPointMake(0, 1);
    [self.layer insertSublayer:gradient atIndex:0];

}

//构建登录组件
- (void)makeLoginView{
    
    [self addSubview:self.headImage];
    [self.headImage addSubview:self.headLable];
    [self addSubview:self.nameText];
    [self addSubview:self.emailText];
    [self addSubview:self.passwordText];
    [self addSubview:self.regButton];
    [self addSubview:self.loginButton];
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    _headImage.sd_layout.leftSpaceToView(self, 50).topSpaceToView(self, 100).rightSpaceToView(self, 50).heightIs(self.bounds.size.width-150);
    _headLable.sd_layout.leftSpaceToView(_headImage, 0).topSpaceToView(_headImage, 0).rightSpaceToView(_headImage, 0).bottomSpaceToView(_headImage, 0);
    _nameText.sd_layout.leftSpaceToView(self, 50).rightSpaceToView(self, 50).topSpaceToView(_headImage, 20).heightIs(40);
    _emailText.sd_layout.leftSpaceToView(self, 50).rightSpaceToView(self, 50).topSpaceToView(_nameText, 20).heightIs(40);
    _passwordText.sd_layout.leftSpaceToView(self, 50).rightSpaceToView(self, 50).topSpaceToView(_emailText, 20).heightIs(40);
    _regButton.sd_layout.leftSpaceToView(self, 50).rightSpaceToView(self, 50).topSpaceToView(_passwordText, 20).heightIs(40);
    _loginButton.sd_layout.leftSpaceToView(self, 50).rightSpaceToView(self, 50).bottomSpaceToView(self, 20).heightIs(50);
    
}
//照片点击事件
- (void)clickImg:(UITapGestureRecognizer *)sender{
    
    if([_delegate respondsToSelector:@selector(selectImg)]){
    
        [_delegate selectImg];
        
        
    }
}

#pragma mark - 输入框代理实现方法
//开始编辑时调用
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    textField.textColor = [UIColor blackColor];
}
//结束编辑时调用
- (void)textFieldDidEndEditing:(UITextField *)textField{
    
    switch (textField.tag) {
        case 100:
            if(![RegisteredTool isVerificationName:textField.text]){
                textField.textColor = [UIColor redColor];
            }
            break;
        case 101:
            if(![RegisteredTool isVerificationEmail:textField.text]){
                textField.textColor = [UIColor redColor];
            }
            break;
        case 102:
            if(self.passwordText.text.length < 6 || self.passwordText.text.length > 20){
                textField.textColor = [UIColor redColor];
            }
            break;
            
        default:
            break;
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
