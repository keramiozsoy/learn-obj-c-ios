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
@synthesize label1;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)btnTap:(id)sender {
    
    NSLog(@" Log - Butona Basildi");
    
    // [_label1 setText:@"Butona Basildi"];
    
    /*
     Tanımlamalar private
     olduğundan
     @synthesize tanımlaması
     yapıldıktan sonra _
     işareti kullanılmadan
     erişim sağlanabilir.
     */
    [label1 setText:@"Butona Basildi"];
    
}



@end
