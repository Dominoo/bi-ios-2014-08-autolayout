//
//  ViewController.m
//  bi-ios-autolayout
//
//  Created by Dominik Vesely on 17/11/14.
//  Copyright (c) 2014 Ackee s.r.o. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "FirstViewController.h"
#import "LoginController.h"

@interface ViewController ()
@property (nonatomic,weak) UITableView* table;
@property (nonatomic,strong) NSArray* array;
@property (nonatomic,strong) NSArray* controllers;

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView* table = [UITableView new];
    table.dataSource = self;
    table.delegate = self;
    [self.view addSubview:table];
    self.table = table;
    
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [table mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    
    self.array = @[@"4 stejne boxy", @"Login"];
    self.controllers = @[[FirstViewController new], [LoginController new]];
    
}



-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = _array[indexPath.row];
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController:_controllers[indexPath.row] animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    
    
}

@end
