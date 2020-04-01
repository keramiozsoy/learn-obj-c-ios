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
  
    Ogrenci *ogr1 = [[Ogrenci alloc] init];
        ogr1.kimlikNo =12312412;
        ogr1.gerekli = YES;
     
    
    
    Kisi *kisi1 = [[Kisi alloc] init];
    kisi1.kimlikNo = 1231;
    
    // private degisken ulasilamaz
    // kisi1.hesapAcmaTarihi
       
       
    
    
    Kisi *kisi2 = [[Kisi alloc] init];
    
    [kisi2 deneme1];
    
    [kisi2 deneme2];
    
    [kisi2 deneme3];
    
    [kisi2 sayiyiKendisiyleCarp:2];
    
    NSString *toplanmisCevap = [kisi2 metodunAdi:@" birrrr " metodunSoyadiIleDevamEdiyor:@" iki "];

    // private metot icin icinde private yazilir
    // [kisi2 privateKelimesiOlanMetotCagrilamaz];
    
    // static metot cagirmak
    int cevap = [Kisi kek];
    
    
    
    // constructor
    
    // default
    Ogrenci *o1 = [[Ogrenci alloc] init];
    
    // custom const
    Ogrenci *o2 = [[Ogrenci alloc] initWithRastgeleMetot:33];
    
    // static metot yardimiyla
    Ogrenci *o3 = [Ogrenci staticMetotunAdiFarketmez:44];
    
    NSLog(@" %d "  , [o2 okulNo]);
    
    
    
    
    
    // dealloc yani finalize metodudur
    // metodu doldursak kullanabiliriz
    // [o3.dealloc ];
    
    
}
 
@end
