//
//  ViewController.m
//  Day10
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)setupGame {
    seconds = 10;
    count = 0;

    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];
    _scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];

    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
}

-(void)subtractTime {
    seconds--;
    _timerLabel.text = [NSString stringWithFormat:@"Time: %i", seconds];

    if (seconds == 0) {
        [timer invalidate];

        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!" message:[NSString stringWithFormat:@"You scored %i points", count] delegate:self cancelButtonTitle:@"Play Again" otherButtonTitles:nil, nil];
        [alert show];
    }
}

- (IBAction)buttonPressed:(UIButton *)sender {
    count++;

    _scoreLabel.text = [NSString stringWithFormat:@"Score\n%i", count];
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    [self setupGame];
}

@end
