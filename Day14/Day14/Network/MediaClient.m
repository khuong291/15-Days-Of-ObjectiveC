//
//  MediaClient.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "MediaClient.h"

@implementation MediaClient

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
            NSLog(@"%@ %@", response, responseObject);
        }
    }];
    [dataTask resume];
}

@end
