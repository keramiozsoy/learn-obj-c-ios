//
//  myCustomAddViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 13.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "myCustomAddViewController.h"

@interface myCustomAddViewController ()

@end

@implementation myCustomAddViewController
@synthesize textfieldOutlet_kisiAdi;
@synthesize textfieldOutlet_kisiYasi;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @" Yeni Kisi Ekle ";
    
    // segue ile
    // yeni butonuna basilip
    // bu sayfaya geliyoruz
    // segue eklerken push olani seciyoruz
    // segue ye ui dan segueForAdd olarak
    // isim veriyoruz.
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonAction_TouchUpInside:(id)sender {
    
    
    Kisi *k = [[Kisi alloc] init];
    [k setAdi:textfieldOutlet_kisiAdi.text];
    k.yasi = [textfieldOutlet_kisiYasi.text integerValue];
    
    
    NSMutableDictionary *dic = [NSMutableDictionary dictionary];
    [dic setObject:k forKey:@"olusanYeniKisi"];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"notifyGonderilenYeniKisi" object:nil userInfo:dic];
    
    
    // butona bastiginda
    // hersey navigationController dan
    // basladigi icin
    // en bas view e bu
    // sekilde gidiyoruz.
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
