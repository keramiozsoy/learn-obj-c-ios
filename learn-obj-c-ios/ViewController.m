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
    
    
    CGRect cerceve = CGRectMake(100, 100, 200, 400);
    
    UIImageView *imgView =[[UIImageView alloc] initWithFrame:cerceve];
    
    // apple urunleri genelde png formati ile calisir
    
    // resim dogrudan klasöre eklenerek
    // calismiyor
    // resim eklemek icin xcode daki
    // projeni üzerine
    // resim sürüklenip birakilir
    // acilan ekrandan yes e tiklanir
    
    [imgView setImage: [UIImage imageNamed:@"tahta_resmi.png"]];
    
    [self.view addSubview:imgView];
    
    
    // Gercekten resim bozulmadan
    // gosterilmesi icin
    // UIViewContentModeScaleAspectFit
    // mod secilir
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    
    
    
    
    // ---------
    
    
    // dot syntax
    // box syntax
    // nedir ?
    
    
    // self.view
    // [self view]
    
    // yukaridaki yazıimlar ayni
    // koseli parantezler ic ice
    // zor okundugundan
    // . ile kullanıldıgında
    // paranteze gerek kalmiyor
    // tek sebebi budur :)

    
    // box syntax
    // koseli ve : ile kullanilir.
    // set
    // get attribute vardir.
    
    // dot syntax
    // . ve = ile kullanilir.
    // set yoktur dogrudan yazilir
    // get attribute vardir
    
    // [imgView setContentMode:UIViewContentModeScaleAspectFit];
    
     // imgView.contentMode = UIViewContentModeScaleAspectFit;
    
    
    
    
    
    
    
    
}

@end
