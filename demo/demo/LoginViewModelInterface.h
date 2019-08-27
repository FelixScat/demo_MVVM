//
//  LoginViewModelInterface.h
//  demo
//
//  Created by Felix on 2019/8/27.
//  Copyright © 2019 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LoginViewModelInterface <NSObject>

- (void)inputUserName:(NSString *)uname;
- (void)inputPwd:(NSString *)pwd;
- (void)didTapLoginBUtton;

@end

NS_ASSUME_NONNULL_END
