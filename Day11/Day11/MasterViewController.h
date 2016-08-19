//
//  MasterViewController.h
//  Day11
//
//  Created by Khuong Pham on 8/19/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, strong) NSMutableSet *cellsCurrentlyEditing;

@end

