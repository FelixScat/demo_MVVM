//
//  ViewController.m
//  demo
//
//  Created by Felix on 2019/8/27.
//  Copyright © 2019 Felix. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewModelDelegate.h"
#import "LoginViewModel.h"

@interface ViewController () <LoginViewModelDelegate, UITextFieldDelegate>
@property (nonatomic ,strong) LoginViewModel *vm;
@property (weak, nonatomic) IBOutlet UITextField *unameTxf;
@property (weak, nonatomic) IBOutlet UITextField *pwdTxf;
@property (weak, nonatomic) IBOutlet UIButton *loginBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.vm.delegate = self;
}

- (IBAction)toggleLogin:(id)sender {
    [self.vm didTapLoginBUtton];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSString *str = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    switch (textField.tag) {
        case 0:
            [self.vm inputUserName:str];
            break;
            
        case 1:
            [self.vm inputPwd:str];
            break;
    }
    return true;
}

#pragma mark - VMDelegate

- (void)loginSuccess {
    
    [self showTips:@"Login Success"];
    
}
- (void)showTips:(NSString *)tip {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Tip" message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    [alertVC addAction:action];
    
    [self presentViewController:alertVC animated:true completion:nil];
}
- (void)buttonEnable:(BOOL )enable {
    self.loginBtn.enabled = enable;
}

#pragma mark - Getter

- (LoginViewModel *)vm {
    if (!_vm) {
        _vm = [LoginViewModel new];
    }
    return _vm;
}

@end
