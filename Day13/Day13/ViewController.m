//
//  ViewController.m
//  Day13
//
//  Created by Khuong Pham on 8/29/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

#define kBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0) //1
#define kLatestKivaLoansURL [NSURL URLWithString:@"http://api.kivaws.org/v1/loans/search.json?status=fundraising"]

@interface NSDictionary (JSONCategories)

+ (NSDictionary *)dictionaryWithContentsOfJSONURLString:(NSString *)urlAddress;
- (NSData *)toJSON;

@end

@implementation NSDictionary (JSONCategories)

+ (NSDictionary *)dictionaryWithContentsOfJSONURLString:(NSString *)urlAddress {
    NSData * data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlAddress]];
    __autoreleasing NSError * error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    if (error != nil) {
        return nil;
    }
    return result;
}

- (NSData *)toJSON {
    NSError * error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:&error];
    if (error != nil) {
        return nil;
    }
    return result;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    dispatch_async(kBgQueue, ^{
        NSData * data = [NSData dataWithContentsOfURL:kLatestKivaLoansURL];
        [self performSelectorOnMainThread:@selector(fetchedData:) withObject:data waitUntilDone:YES];
    });
}

- (void)fetchedData:(NSData *)responseData {
    NSError * error;
    NSDictionary * json = [NSJSONSerialization JSONObjectWithData:responseData options:kNilOptions error:&error];
    NSArray * lastestLoans = [json objectForKey:@"loans"];
    NSLog(@"loans: %@", lastestLoans);
    NSDictionary * loan = [lastestLoans objectAtIndex:0];

    NSNumber * fundedAmount = [loan objectForKey:@"funded_amount"];
    NSNumber * loanAmount = [loan objectForKey:@"loan_amount"];
    float outstandingAmount = [loanAmount floatValue] - [fundedAmount floatValue];

    self.humanReadble.text = [NSString stringWithFormat:@"Lastest loan: %@ from %@ needs another $%.2f to pursue their entrepreneural dream", [loan objectForKey:@"name"], [(NSDictionary *)[loan objectForKey:@"location"] objectForKey:@"country"], outstandingAmount];

    NSDictionary * info = [NSDictionary dictionaryWithObjectsAndKeys:[loan objectForKey:@"name"], @"who", [(NSDictionary *)[loan objectForKey:@"location"] objectForKey:@"country"], @"where", [NSNumber numberWithFloat:outstandingAmount], @"what", nil];
    NSData * jsonData = [NSJSONSerialization dataWithJSONObject:info options:NSJSONWritingPrettyPrinted error:&error];
    self.jsonSummary.text = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

@end
