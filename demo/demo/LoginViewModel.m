//
//  LoginViewModel.m
//  demo
//
//  Created by Felix on 2019/8/27.
//  Copyright © 2019 Felix. All rights reserved.
//

#import "LoginViewModel.h"

@interface LoginViewModel ()

@property (assign, nonatomic) BOOL unameValid;

@property (assign, nonatomic) BOOL pwdValid;

@end

@implementation LoginViewModel

- (void)inputUserName:(NSString *)uname {
    self.unameValid = uname.length>0;
    [self judgeAllValid];
}
- (void)inputPwd:(NSString *)pwd {
    self.pwdValid = pwd.length>0;
    [self judgeAllValid];
}
- (void)didTapLoginBUtton {
    // 一些请求,这里忽略网络请求,直接模拟结果
    [self.delegate loginSuccess];
}

- (void)judgeAllValid {
    BOOL v = [self isAllValid];
    [self.delegate buttonEnable:v];
}

- (BOOL)isAllValid {
    return self.unameValid && self.pwdValid;
}

@end
