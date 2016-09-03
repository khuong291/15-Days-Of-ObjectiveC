//
//  Media.m
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "Media.h"

@implementation Media

+ (NSMutableArray<Media*> *)parse:(NSDictionary *)json {
    NSMutableArray<Media*> *mediaList;

    NSArray<NSDictionary*> *movies = json[@"movies"];
    for (id movie in movies) {
        Media *media = [[Media alloc] init];

        int year = (int) movie[@"year"];
        media.title = [NSString stringWithFormat:@"%@ %d", (NSString *)movie[@"title"], year];
        NSDictionary *rating = movie[@"ratings"];
        int criticsScore = (int)rating[@"critics_score"];
        int runTime = (int)movie[@"runtime"];

        media.synopsis = [NSString stringWithFormat:@"Duration %d p %d\n %@", runTime, criticsScore, (NSString *)movie[@"synopsis"]];

        [mediaList addObject:media];
    }
    return mediaList;
}

@end
