//
//  FirstViewController.m
//  bi-ios-autolayout
//
//  Created by Dominik Vesely on 17/11/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import "FirstViewController.h"
#import <Masonry.h>
#import <ACKategories.h>

@interface FirstViewController ()
@property (nonatomic,assign) BOOL blue;
@property (nonatomic,assign) BOOL red;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _blue = YES;
    _red = YES;
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    UIView* v1 = [UIView new];
    v1.backgroundColor = [UIColor redColor];
    [self.view addSubview:v1];
    [v1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(10);
        make.left.equalTo(@10);
        make.height.equalTo(self.view).multipliedBy(2/3.);
        make.width.equalTo(self.view).multipliedBy(1/2.).with.offset(-10);
    }];
    
    UIView* v2 = [UIView new];
    v2.backgroundColor = [UIColor blueColor];
    [self.view addSubview:v2];
    [v2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(v1.mas_top);
        make.left.equalTo(v1.mas_right).with.offset(10);
        make.height.equalTo(v1).multipliedBy(1/2.);
        make.right.equalTo(@-10);
    }];
    
    UIView* v3 = [UIView new];
    v3.backgroundColor = [UIColor greenColor];
    [self.view addSubview:v3];
    [v3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-10);
        make.top.equalTo(v1.mas_bottom).with.offset(10).with.priorityLow();
        make.left.equalTo(@10);
        make.height.equalTo(self.view).multipliedBy(1/3.).with.offset(-30);
        make.right.equalTo(@-10);
    }];



    
    
    
    [v2 onTap:^(id sender) {
       //[UIView animateWithDuration:1.5 animations:^{
           [UIView animateWithDuration:1.5 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:0 animations:^{
               if(_blue) {
                   [v1 mas_remakeConstraints:^(MASConstraintMaker *make) {
                       make.top.equalTo(@10);
                       make.left.equalTo(@10);
                       make.width.equalTo(self.view).multipliedBy(1/2.).with.offset(-10);
                       make.height.equalTo(self.view).multipliedBy(1/3.);
                   }];
                   [v2 mas_remakeConstraints:^(MASConstraintMaker *make) {
                       make.top.equalTo(v1.mas_top);
                       make.left.equalTo(v1.mas_right).with.offset(10);
                       make.right.equalTo(@-10);
                       make.height.equalTo(self.view).multipliedBy(2/3.);
                   }];
               } else {
                   [v1 mas_remakeConstraints:^(MASConstraintMaker *make) {
                       make.top.equalTo(@10);
                       make.left.equalTo(@10);
                       make.height.equalTo(self.view).multipliedBy(2/3.);
                       make.width.equalTo(self.view).multipliedBy(1/2.).with.offset(-10);               }];
                   [v2 mas_remakeConstraints:^(MASConstraintMaker *make) {
                       make.top.equalTo(v1.mas_top);
                       make.left.equalTo(v1.mas_right).with.offset(10);
                       make.height.equalTo(self.view).multipliedBy(1/3.);
                       make.right.equalTo(@-10);               }];
               }
               _blue = !_blue;
               
               [self.view layoutIfNeeded];

           } completion:^(BOOL finished) {
               
           }];
                  }];
   // }];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
