//
//  ViewController.h
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)btnTap:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UIButton *btn2Outlet;
-(IBAction)btn2Action_TouchUpInside:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *btn3Outlet;
- (IBAction)btn3Action_TouchUpInside:(id)sender;

@end

