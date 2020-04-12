//
//  myCustomViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 12.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "myCustomViewController.h"

@interface myCustomViewController ()

@end

@implementation myCustomViewController
@synthesize gonderilenKisi;
@synthesize labelOutlet;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@" %@ ",gonderilenKisi.adi);
    
    [labelOutlet setText:gonderilenKisi.adi];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
