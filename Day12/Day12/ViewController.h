//
//  ViewController.h
//  Day12
//
//  Created by Khuong Pham on 8/21/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditInfoViewController.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, EditInfoViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblPeople;

-(IBAction)addNewRecord:(id)sender;

@end

