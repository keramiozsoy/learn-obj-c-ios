//
//  ViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UIPickerViewDataSource ,  UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *pickerViewOutlet;


@property NSMutableArray *dizi;
@property NSMutableArray *dizi2;

@property (weak, nonatomic) IBOutlet UIButton *buttonOutlet;
- (IBAction)buttonAction_TouchUpInside:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;

@end

