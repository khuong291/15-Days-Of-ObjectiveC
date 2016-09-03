//
//  MediaListViewController.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "MediaListViewController.h"

@implementation MediaListViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MediaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MediaCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"hi";
    return cell;
}

@end
