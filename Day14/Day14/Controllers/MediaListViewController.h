//
//  MediaListViewController.h
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaCell.h"

@interface MediaListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
