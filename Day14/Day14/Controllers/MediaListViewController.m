//
//  MediaListViewController.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "MediaListViewController.h"

NSString *movieURLString = @"https://coderschool-movies.herokuapp.com/movies?api_key=xja087zcvxljadsflh214";
NSString *dvdURLString = @"https://coderschool-movies.herokuapp.com/dvds?api_key=xja087zcvxljadsflh214";

@implementation MediaListViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self load:self.mediaType completion:^(NSArray<Media *> *mediaList) {
        self.medias = mediaList;
        [self.tableView reloadData];
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.medias.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MediaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MediaCell" forIndexPath:indexPath];
    Media *media = self.medias[indexPath.row];
    cell.titleLabel.text = media.title;
    cell.synopsisLabel.text = media.synopsis;

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL *imgURL = media.thumbnailURL;
        NSData *imageData = [NSData dataWithContentsOfURL:imgURL];
        dispatch_sync(dispatch_get_main_queue(), ^{
            cell.posterImageView.image = [UIImage imageWithData:imageData];
        });
    });

    return cell;
}

- (void)load:(MediaType *)mediaType completion:(Completion)completion {
    if (mediaType == MediaTypeMovie) {
        [self loadMovies:completion];
    } else {
        [self loadDVDs:completion];
    }
}

- (void)loadMovies:(Completion)completion {
    [self callAPI:movieURLString completion:completion];
}

- (void)loadDVDs:(Completion)completion {
    [self callAPI:dvdURLString completion:completion];
}

- (void)callAPI:(NSString *)urlString completion:(Completion)completion {
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURL *URL = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
            completion(nil);
        } else {
            NSLog(@"%@", responseObject);
            NSDictionary *json = (NSDictionary *)responseObject;
            NSMutableArray<Media*> *mediaList = [Media parse:json];
            completion(mediaList);
        }
    }];
    [dataTask resume];
}

@end
