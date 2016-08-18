//
//  ViewController.h
//  Day10
//
//  Created by Khuong Pham on 8/18/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate> {
    int count;
    int seconds;
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;

- (IBAction)buttonPressed:(UIButton *)sender;

@end

