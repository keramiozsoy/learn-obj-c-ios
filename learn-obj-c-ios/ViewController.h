//
//  ViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonStartOutlet;
- (IBAction)butonStart_TouchUpInside:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonStopOutlet;
- (IBAction)buttonStop_TouchUpInside:(id)sender;



@property (weak, nonatomic) IBOutlet UIButton *buttonStopOutletWithTime;
- (IBAction)buttonStop_TouchUpInside_WithTime:(id)sender;

@end

