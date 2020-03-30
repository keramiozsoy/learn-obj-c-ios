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


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Depracated ios 9
      UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@" Sayfa Basligi " message:@" Bu mesaj yazildi " delegate:self cancelButtonTitle:@" Cikis Yap " otherButtonTitles:@"deneme btn", nil];
      [alertView show]; // ekranda gösterilmesini sagliyor.
      
      
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    // <UIApplicationDelegate> viewController.h a eklendikten sonra
    // bu metot alertView şeklinde yazıldıgında
    // otomatik çıkıyor
    
    NSLog( @" %d tag li alert View", buttonIndex );
    
}

@end
