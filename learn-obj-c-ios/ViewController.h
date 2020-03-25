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


@property (weak, nonatomic) IBOutlet UISlider *sliderOutlet;

- (IBAction)sliderAction_ValueChanged:(id)sender;



@property (weak, nonatomic) IBOutlet UISwitch *switchOutlet;
- (IBAction)switchAction_ValueChanged:(id)sender;

@end

