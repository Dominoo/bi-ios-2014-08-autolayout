//
//  LoginController.h
//  bi-ios-autolayout
//
//  Created by Petr Šíma on Nov/18/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JPSKeyboardLayoutGuideViewController.h"

@interface LoginController : JPSKeyboardLayoutGuideViewController

@property (nonatomic, weak) UIScrollView *scrollView;
@property (nonatomic, weak) UIView *containerView;

@property (nonatomic, weak) UILabel *label;
@property (nonatomic, weak) UITextField *textField;
@property (nonatomic, weak) UIButton *button;

@end
