//
//  MediaListViewController.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "MediaListViewController.h"

@interface MediaListViewController () {
    NSMutableArray<Media*> *medias;
}

@end

NSString *movieURLString = @"https://coderschool-movies.herokuapp.com/movies?api_key=xja087zcvxljadsflh214";
NSString *dvdURLString = @"https://coderschool-movies.herokuapp.com/dvds?api_key=xja087zcvxljadsflh214";

@implementation MediaListViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self load:MediaTypeMovie completion:^(NSArray<Media *> *medias) {
        NSLog(@"hi");
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MediaCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MediaCell" forIndexPath:indexPath];
    cell.titleLabel.text = @"hi";
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
