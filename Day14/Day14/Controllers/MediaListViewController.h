//
//  MediaListViewController.h
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MediaCell.h"
#import "Media.h"
#import "AFNetworking.h"

typedef void (^Completion) (NSArray<Media*> *medias);

@interface MediaListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

- (void)load:(MediaType *)mediaType completion:(Completion)completion;
- (void)loadMovies:(Completion)completion;
- (void)loadDVDs:(Completion)completion;
- (void)callAPI:(NSString *)urlString completion:(Completion)completion;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray<Media*> *medias;
@property (assign) MediaType *mediaType;

@end
