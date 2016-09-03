//
//  MediaClient.h
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Media.h"
#import "AFNetworking.h"

NSString *movieURLString = @"https://coderschool-movies.herokuapp.com/movies?api_key=xja087zcvxljadsflh214";
NSString *dvdURLString = @"https://coderschool-movies.herokuapp.com/dvds?api_key=xja087zcvxljadsflh214";

typedef void (^Completion) (NSArray<Media*> *medias);

@interface MediaClient : NSObject

- (void)load:(MediaType *)mediaType completion:(Completion)completion;
- (void)loadMovies:(Completion)completion;
- (void)loadDVDs:(Completion)completion;
- (void)callAPI:(NSString *)urlString completion:(Completion)completion;

@end
