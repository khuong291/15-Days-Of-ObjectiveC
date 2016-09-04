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
    NSMutableArray<Media*> *mediaList = [[NSMutableArray<Media*> alloc] init];

    NSArray<NSDictionary*> *movies = json[@"movies"];
    for (id movie in movies) {
        Media *media = [[Media alloc] init];

        media.title = [NSString stringWithFormat:@"%@", (NSString *)movie[@"title"]];
        NSDictionary *rating = movie[@"ratings"];
        int criticsScore = (int)rating[@"critics_score"];
        int runTime = (int)movie[@"runtime"];

        media.synopsis = [NSString stringWithFormat:@"Duration %d p %d\n %@", runTime, criticsScore, (NSString *)movie[@"synopsis"]];
//        media.thumbnailURL = NSURL(string: movie.valueForKeyPath("posters.thumbnail") as! String)!
//        media.detailURL = NSURL(string: movie.valueForKeyPath("posters.detailed") as! String)!
        NSDictionary *posters = movie[@"posters"];
        media.thumbnailURL = [NSURL URLWithString:posters[@"thumbnail"]];
        [mediaList addObject:media];
    }
    return mediaList;
}

@end
