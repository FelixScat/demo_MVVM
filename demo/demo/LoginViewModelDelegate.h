//
//  LoginViewModelDelegate.h
//  demo
//
//  Created by Felix on 2019/8/27.
//  Copyright © 2019 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LoginViewModelDelegate <NSObject>

- (void)loginSuccess;
- (void)showTips:(NSString *)tip;
- (void)buttonEnable:(BOOL )enable;

@end

NS_ASSUME_NONNULL_END
