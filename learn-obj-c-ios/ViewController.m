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
@synthesize btn2Outlet;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Log - 3 - ViewController.m - viewDidLoad");
    
    NSLog(@"Log - btn2 renk degistikten sonra gosterildi");
    
    [btn2Outlet setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    
    
    
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



- (IBAction)btn2Action_TouchUpInside:(id)sender {
    
    // Butonu gizler
    // [btn2Outlet setHidden:YES];
    
    // Butonu %50 oranında görünürlüğünü değiştirir
    // [btn2Outlet setAlpha:0.5];
    
    UIColor *yeniRenk = [[UIColor alloc] initWithRed:0 green:1 blue:0 alpha:0.5];
    
    UIColor *yeniRenk2 = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.5];
    
    [btn2Outlet setBackgroundColor: yeniRenk2];
    
}
- (IBAction)btn3Action_TouchUpInside:(id)sender {
    
    // butonun yerini değiştiriyor
    [_btn3Outlet setCenter:CGPointMake(250, 250)];
    
    // butonun boyutunu değiştiriyor
    //[_btn3Outlet setBounds:CGRectMake(300, 300, 30, 30)];
}
@end
