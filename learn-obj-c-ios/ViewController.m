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
@synthesize pickerViewOutlet;
@synthesize buttonOutlet;
@synthesize labelOutlet;
@synthesize dizi;
@synthesize dizi2;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // butonun basligi degisitrildi
    [buttonOutlet setTitle:@"Listenin en sonunda yeni eleman ekle" forState:nil];
    
    
    // delegate ve datasource neden kullanildi
    // https://developer.apple.com/documentation/uikit/uipickerview?language=objc
    [pickerViewOutlet setDelegate:self];
    [pickerViewOutlet setDataSource:self];
    
    
    dizi = [[NSMutableArray alloc] initWithObjects:@"bir",@"iki",@"uc",@"dort",nil];
    
    dizi2 = [[NSMutableArray alloc] initWithObjects:@"A",@"B",@"C",nil];
    
    
    
    // 2 nolu kayit secili olarak gelsin
    [pickerViewOutlet selectRow:2 inComponent:0 animated:YES];
    
    
    
    
}
// kac tane component olsun gozüksün
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2; // dizi ve dizi2 iki ayrı componenent icinde gozukecek
}



// her bir component icinde kac eleman var

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if(component == 0){
        return [dizi count]; // O nolu indekse sahip component kac satirli
    }else{
        return [dizi2 count]; // 1 nolu indekse sahip component kac satirli
    }
}



// her bir component icin baslik ver

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    if(component == 0){
        return [dizi objectAtIndex:row];
    }else {
        return [dizi2 objectAtIndex:row];
    }
    
}


// hangi componentte hangi satir secildi ogren
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSMutableString *yaziRowComponent = [[NSMutableString alloc] initWithFormat:@" component %d row %d ",component,row];
    
    // secileni ekrana yazdir
    [labelOutlet setText:yaziRowComponent];
 
    
    // Suan hangi component de ne secili
    
    NSInteger secilenSatir = [pickerView selectedRowInComponent:0];
    
    NSLog(@" 0. component secili olan %d" ,secilenSatir );
    
    
}


- (IBAction)buttonAction_TouchUpInside:(id)sender {
    
    
    NSMutableString *yazi = [[NSMutableString alloc]initWithFormat:@" geldim  " ];
    
    [dizi addObject:yazi];
    
    // tüm yukarıdaki fonskiyonları
    // tekrar cagirarak güncelleme olur
    [pickerViewOutlet reloadAllComponents];
    
    // sadece istedigim
    // güncellensin
    // [pickerViewOutlet reloadComponent:0];
    
    
    [pickerViewOutlet setHidden:YES];
    
}
@end
