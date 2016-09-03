//
//  Media.h
//  Day14
//
//  Created by Khuong Pham on 9/3/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, MediaType) {
    MediaTypeMovie,
    MediaTypeDVD,
};

@interface Media : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *synopsis;
@property (strong, nonatomic) NSURL *thumbnailURL;
@property (strong, nonatomic) NSURL *detailURL;

+ (NSMutableArray<Media*> *)parse:(NSDictionary *)json;

@end
