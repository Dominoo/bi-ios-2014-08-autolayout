//
//  LoginController.m
//  bi-ios-autolayout
//
//  Created by Petr Šíma on Nov/18/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import "LoginController.h"
#import <Masonry.h>

@implementation LoginController

#define OFFSET 10
#define INSETS UIEdgeInsetsMake(OFFSET,OFFSET,OFFSET,OFFSET)

-(void)loadView
{
	UIView *view = [UIView new];
	view.backgroundColor = [UIColor whiteColor];
	self.view = view;
	
	
	UIScrollView *scrollView = [UIScrollView new];
	[self.view addSubview:scrollView];
	[scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
		make.left.and.right.and.top.equalTo(view);
		make.bottom.equalTo(self.keyboardLayoutGuide);
	}];
	
	UIView *container = [UIView new];
	[scrollView addSubview:container];
	[container mas_makeConstraints:^(MASConstraintMaker *make) {
		make.edges.equalTo(scrollView).with.insets(INSETS);
		make.width.equalTo(view).with.offset(-2*OFFSET);
	}];
	
	
	UILabel *label = [UILabel new];
	label.numberOfLines = 0;
	label.backgroundColor = [UIColor redColor];
	[container addSubview:label];
	[label setContentCompressionResistancePriority:UILayoutPriorityDefaultLow forAxis:UILayoutConstraintAxisVertical];
	[label mas_makeConstraints:^(MASConstraintMaker *make) {
//		make.left.and.right.equalTo(view).with.insets(INSETS);
		make.left.and.right.equalTo(container);//.with.insets(INSETS);
		make.top.equalTo(container).with.offset(OFFSET);
	}];
	self.label = label;
	
	UITextField *textField = [UITextField new];
	[container addSubview:textField];
	[textField mas_makeConstraints:^(MASConstraintMaker *make) {
		make.left.and.right.equalTo(view);//.with.insets(INSETS);
		make.top.equalTo(label.mas_bottom).with.offset(OFFSET);
	}];
	self.textField = textField;
	
	UIButton *button = [UIButton new];
	button.backgroundColor = [UIColor greenColor];
	[container addSubview:button];
	[button mas_makeConstraints:^(MASConstraintMaker *make) {
		make.left.and.right.equalTo(view);//.with.insets(INSETS);
		make.top.equalTo(textField.mas_bottom);
		make.bottom.equalTo(container.mas_bottom).with.offset(-OFFSET);
//		make.top.greaterThanOrEqualTo(textField.mas_bottom).with.offset(OFFSET);
	}];
	self.button = button;
}

-(void)viewDidLoad
{
	[super viewDidLoad];
	self.navigationController.navigationBar.translucent = NO;
	
	
	self.label.text = @"login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:login:lo";
	self.textField.text = @"textfield";
	[self.button setTitle:@"button" forState:UIControlStateNormal];
}

-(void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	
}

@end
