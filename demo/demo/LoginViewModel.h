//
//  LoginViewModel.h
//  demo
//
//  Created by Felix on 2019/8/27.
//  Copyright © 2019 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewModelDelegate.h"
#import "LoginViewModelInterface.h"

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewModel : NSObject <LoginViewModelInterface>

@property (nonatomic, weak) id<LoginViewModelDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
