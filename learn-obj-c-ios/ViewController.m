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

UILabel *labelOutlet;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    CGRect frameForLabelOutlet = CGRectMake(100, 100, 200, 50 );
    
    labelOutlet = [[UILabel alloc] initWithFrame:frameForLabelOutlet];
    
    [labelOutlet setText:@"+ veya -"];
    
    // ViewController view objesine label eklenir
    [self.view addSubview:labelOutlet];
    
    // ------------
    
    
    CGRect frame1 = CGRectMake(150, 150, 200, 50 );
    
    // bulunacagi yeri belirterek olusturduk
    UIStepper *stepper1 = [[UIStepper alloc] initWithFrame:frame1];
    
    [stepper1 setMinimumValue:0];
    [stepper1 setMaximumValue:100];
    // kacar kacar artacagi
    [stepper1 setStepValue:5];
    // ekran acildiginda varsayilan degeri
    [stepper1 setValue:50];
    
    //  ViewController view objesine stepper eklenir
    [self.view addSubview:stepper1];
    
    
    // stepper da hangi value change yapildiginda
    // yapilacak islemi bir metot cagrisina
    // addTarget metot yardımıyla bagliyoruz
    // UIControlEventValueChanged enum
    // ekrana elimizle ekledikten sonra
    // ctrl tusuna basarak
    // ViewController.h dosyasina surukleyip
    // action secitiğimizdeki action
    // olaynının programsal sekilde
    // yapılmasidir. :)
    
    [stepper1 addTarget:self action:@selector(degerDegisti:) forControlEvents:UIControlEventValueChanged];
    
    
}


- (IBAction)degerDegisti:(id)sender{
    
    // sender ile  gönderilen deger
    // cast islemi yapliyor
    UIStepper *s = (UIStepper*) sender;
    
    NSNumber *seciliDeger = [[NSNumber alloc]initWithDouble:s.value];
    
    NSLog(@"%@", seciliDeger.stringValue);
 
    
    // secili degeri label a yazdiriyoruz
    [labelOutlet setText:seciliDeger.stringValue];
}

@end
