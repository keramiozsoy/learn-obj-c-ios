//
//  ViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)datePickerAction_ValueChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UITextView *textViewOutlet;


@end

