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
        media.title = (NSString *)movie[@"title"];
        NSDictionary *rating = movie[@"ratings"];
        int criticsScore = (int)rating[@"critics_score"];
        int audienceScore = (int)rating[@"audience_score"];
        int runTime = (int)movie[@"runtime"];

        [mediaList addObject:media];
    }
    return mediaList;
}

//static func parse(json: NSDictionary) -> [Media] {
//    var mediaList = [Media]()
//
//    let movies = json["movies"] as! [NSDictionary]
//    for movie in movies {
//        var media = Media()
//
//        let year = movie["year"] as! Int
//        media.title = (movie["title"] as! String) + " (" + String(year) + ")"
//
//        let rating = movie["ratings"] as! NSDictionary
//        let criticsScore = rating["critics_score"] as! Int
//        let audienceScore = rating["audience_score"] as! Int
//        let runTime = movie["runtime"] as! Int
//
//        media.synopsis = "Duration: " + String(runTime) + "p" + "\nCritics Score: " + String(criticsScore) + ", Audience Score: " + String(audienceScore) + "\n\n" + (movie["synopsis"] as! String)
//        media.thumbnailURL = NSURL(string: movie.valueForKeyPath("posters.thumbnail") as! String)!
//        media.detailURL = NSURL(string: movie.valueForKeyPath("posters.detailed") as! String)!
//
//        mediaList.append(media)
//    }
//
//    return mediaList
//}

@end
