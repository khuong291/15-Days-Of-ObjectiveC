//
//  EditInfoViewController.h
//  Day12
//
//  Created by Khuong Pham on 8/22/16.
//  Copyright © 2016 Fantageek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EditInfoViewControllerDelegate <NSObject>

-(void)editingInfoWasFinished;

@end

@interface EditInfoViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txtFirstname;
@property (weak, nonatomic) IBOutlet UITextField *txtLastname;
@property (weak, nonatomic) IBOutlet UITextField *txtAge;

@property (strong, nonatomic) id<EditInfoViewControllerDelegate> delegate;

@property (nonatomic) int recordIDToEdit;

-(IBAction)saveInfo:(id)sender;

@end
