//
//  ViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;

// ----


@property (weak, nonatomic) IBOutlet UITextField *textFieldOutlet;

- (IBAction)textField_EditingDidEnd:(id)sender;

- (IBAction)textField_EditingDidBegin:(id)sender;

- (IBAction)textField_EditingChanged:(id)sender;

// ----

@property (weak, nonatomic) IBOutlet UIButton *btnOutlet;

- (IBAction)btn_TouchUpInside:(id)sender;


@end

