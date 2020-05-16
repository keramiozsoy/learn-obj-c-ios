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
@synthesize textFieldOutlet;
@synthesize btnOutlet;
@synthesize labelOutlet;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [btnOutlet setBackgroundColor:[UIColor redColor]];
    
    [labelOutlet setTextColor:[UIColor whiteColor]];
    
    
    // sayfa acildiginda otomatik olarak secili
    //[textFieldOutlet becomeFirstResponder];
    
    // password girişi gorunumu saglar
    //[textFieldOutlet setSecureTextEntry:YES];
    
    
    // farklı klavye görünümleri
    //[textFieldOutlet setKeyboardType:UIKeyboardTypeNumberPad];
    
    
    //[textFieldOutlet setKeyboardType:UIKeyboardTypeEmailAddress];
    
    
}
- (IBAction)textField_EditingDidBegin:(id)sender {
    
    NSLog(@" Log - yazmaya basladi ");
    
}

- (IBAction)textField_EditingDidEnd:(id)sender {
    
    NSLog(@" Log - yazidan cikildi bitti ");
    
}

- (IBAction)textField_EditingChanged:(id)sender {
    
    NSLog(@" Log - yazi degisiyor ");
    
    // yazi degistikce label de gösteriliyor
    
    NSString *degisenyazi = [textFieldOutlet text];
    
    [labelOutlet setText:degisenyazi];
    
}

- (IBAction)btn_TouchUpInside:(id)sender {
    // focus yapılmış bir textfield
    // dışına tıklanarak unfocus
    // yapmak için tüm sayfayı bir buton
    // ile kaplıyoruz ki
    // kullanıcı boş bir yere basarak
    // klavyeyi de kapatabilsin
    
    
    // buttonType = custom seçilir
    
    // buton tüm sayfayı kaplayacak şekilde
    // genişletilir
    
    // view controller scene den içinde
    // bulunduğu view in en alt katmanında
    // olması için en yukarı taşınır.
    
    // uygulama baslarken rengi kirmizi
    
    NSLog(@" Log - Geri tusuna basildi ");
    
    
    // Bu metot unfocus yapmayı sağlar
    [textFieldOutlet resignFirstResponder];
    
}
@end
