//
//  BlockTester.m
//  Day04
//
//  Created by Khuong Pham on 8/8/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "BlockTester.h"

@interface BlockTester ()
@property (nonatomic, copy) void (^block)(id, NSUInteger, BOOL*);
@end

@implementation BlockTester

- (void)runTests {

    // 1 - Creating and calling a block
    void (^MyBlock)(id, NSUInteger, BOOL*) = ^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"Video game: %@", (NSString *)obj);
    };
    BOOL stop;
    MyBlock(@"Path of Exile", 0, &stop);

    // 2 - Passing a block to a method
    NSArray *videoGames = @[@"Fallout 2", @"Deus Ex", @"Final Fantasy IV"];
    [videoGames enumerateObjectsUsingBlock:MyBlock];

    // 3 - Inline form
    NSString *favoriteGame = @"Fallout 2";
    __block int countOfGames = 0;
    [videoGames enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *game = (NSString *)obj;
        if ([game isEqualToString:favoriteGame]) {
            NSLog(@"w00t, %@ is my favorite game!", game);
        } else {
            NSLog(@"Video game: %@", (NSString *)obj);
        }
        countOfGames++;
    }];
    NSLog(@"Count of games: %d", countOfGames);

    // 4 - Test calling  a method with a block as a parameter
    __weak BlockTester *weakSelf = self;
    [self doSomethingWithBlock:^(id obj, NSUInteger idx, BOOL * stop) {
        [weakSelf logDone];
    }];
}

- (void)logDone {
    NSLog(@"Done!");
}

- (void)doSomethingWithBlock:(void (^)(id, NSUInteger, BOOL*))block {
    self.block = block;
    [self performSelector:@selector(afterOneSecond) withObject:nil afterDelay:1.0];
}

- (void)afterOneSecond {
    BOOL stop;
    self.block(@"The Legend of Zelda", 0, &stop);
}

- (void)dealloc {
    NSLog(@"Deallocated!");
}

@end
