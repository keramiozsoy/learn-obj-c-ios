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
@synthesize textViewOutlet;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [textViewOutlet setText:@"Secilen zaman buraya yazilacak"];

}
- (IBAction)datePickerAction_ValueChanged:(id)sender {
    
    // tarih ile ilgili sinif
    // NSDate
    
    // Ui tarafina eklenen
    // picker degeri degistigi
    // zaman bu metot otomatik
    // calisiyor.
    // outlet olarak bir
    // tanim yapilmadan
    // sender
    // cast
    // yapılarak dogrudan
    // ui daki picker a
    // ulasilabiliyor
    UIDatePicker *picker =  (UIDatePicker*) sender;
    
    // simdiki zaman
    // NSDate *simdi = [NSDate now];
    
    
    //ekranda sacili olan
    NSDate *secilenZaman = [picker date];
    
    // nsdate --> nsstring
    // nsstring --> nsdate
    //
    // cevirmek icin
    //
    // nsdateformatter
    //
    // kullan
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    
    
    // Herseyi goster
    [formatter setDateStyle:NSDateFormatterFullStyle];
    [formatter setTimeStyle:NSDateFormatterFullStyle];

    
    
    
    // Bir tanesini goster
    //[formatter setDateStyle:NSDateFormatterMediumStyle];
    //[formatter setTimeStyle:NSDateFormatterNoStyle];

    
    
    // Custom
    //[formatter setDateFormat:@"yyyy"];
    
    
    NSString *sonuc = [formatter stringFromDate:secilenZaman];


    [textViewOutlet setText:sonuc];
    
    
    // string ten date e cevirme islemi var
    //
    // dateFromString kullaniliyor
    

    
    
    // ekranda gosterilen picker da
    // hangi alanlar gozuksun
    // view did load ta kulanmalisin
    // [picker setDatePickerMode:UIDatePickerModeDateAndTime];
    
    
    
    
    
    
}
@end
