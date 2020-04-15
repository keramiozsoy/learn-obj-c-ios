//
//  ViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 15.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Bundle nedir ?
    
    // .app uzantili
    // projemizin derlenmis haline
    // verilen isimdir.
    
    // Dosya okuma surekli yapıyorsaniz
    //
    // NSCachesDirectory konusu
    //
    // incelenemelidir.
    
    // Tüm dosyalara erismek icin
    // asagida bir metot daha yazdik
    
    // app icindeki bir dosya okuma yapalim
    
    @try {
        
        // var olmayan dosyayi okuyalim
        //
        // NSString *icerik =  [DosyaOku okuWithResource:@"deneme1" andType:@"txt"];
        
        NSString *icerik =  [DosyaOku okuWithResource:@"deneme" andType:@"txt"];
        
        NSLog(@" %@ ", icerik);
        
    } @catch (NSException *exception) {
        NSLog(@" icerik bulunamadi");
    }
    
    
   
    // Istenilen herhangi
    // bir lokasyonda
    // dosya olusturup yazip okumak
    
    NSString *icerik2 = [DosyaOku telefondakiKlasordenOkuWithResource:@"yenidosya" andType:@".txt"];
    NSLog(@" icerik2 :  %@ ", icerik2);
    
   
    
    
    
    
    
    
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
