//
//  ViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 19.03.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize labelOutlet;
@synthesize sliderOutlet;
@synthesize switchOutlet;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [sliderOutlet setMinimumValue:100];
    [sliderOutlet setMaximumValue:200];
    
    UIColor *sagTaraftakiRenk = [UIColor redColor];
    
    UIColor *solTaraftakiRenk = [UIColor greenColor];

    [sliderOutlet setMaximumTrackTintColor: sagTaraftakiRenk];
    
    [sliderOutlet setMinimumTrackTintColor: solTaraftakiRenk];
    
    // sadece tuttum fakat biraktigim yerde
    // degeri setlenmesi isteniyor ise bu
    // parametre veriliyor
    //[sliderOutlet setContinuous:YES];
    [sliderOutlet setContinuous:NO];
    
    
    
    // ---------------------------------------
    
    
    
    // sayfa ilk acildiginda
    // switch kapali gelsin
    [switchOutlet setOn:NO];
    
    
    // Renk kirmizi olmadi incele
    [switchOutlet setTintColor:[UIColor redColor]];
    
}

- (IBAction)sliderAction_ValueChanged:(id)sender {
    
    NSLog(@" %f ", [sliderOutlet value]);
    
    //NSString *degisenDeger = [NSString alloc] initWithFormat:@" %f ",[[sliderOutlet value] ]);
    
    NSString *degisenDeger = [[NSNumber alloc] initWithFloat:[sliderOutlet value]].stringValue;
    
    [labelOutlet setText: degisenDeger];
    
}
- (IBAction)switchAction_ValueChanged:(id)sender {
    
    
    if ([switchOutlet isOn]) {
        NSLog(@"Log - Acik");
    }else{
        NSLog(@"Log - Kapali");
    }
    
    
    
}
@end
