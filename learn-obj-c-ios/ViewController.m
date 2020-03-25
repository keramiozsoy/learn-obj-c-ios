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

// tüm sınıfta kullanılacak
 UIActivityIndicatorView *indicator;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:     UIActivityIndicatorViewStyleLarge];
    
    // ekranda nerede olacagi
    //indicator setCenter:CGPointMake(50, 50);
    
    // self, bu sinif demektir. (this)
    [indicator setCenter: self.view.center];
    
    // indicator u acilan sayfaya ekledik
    [self.view addSubview:indicator];
    
    
    // butonlarin isimleri
    [_buttonStartOutlet setTitle:@"start"  forState:UIControlStateNormal];
    
    [_buttonStopOutlet setTitle:@"stop"  forState:UIControlStateNormal];
    
    [_buttonStopOutletWithTime setTitle:@"2 saniyede dur"  forState:UIControlStateNormal];

}

- (IBAction)butonStart_TouchUpInside:(id)sender {
    
    // animasyon baslat
    [indicator startAnimating];
    
    
}
- (IBAction)buttonStop_TouchUpInside:(id)sender {
    
    // animasyon durdur
    [indicator stopAnimating];
    
}

- (IBAction)buttonStop_TouchUpInside_WithTime:(id)sender {
    
    // bastiktan 2 saniye sonra duracak
    if ([indicator isAnimating]){
    
    [self performSelector: @selector(kekekek) withObject:nil afterDelay:2.0];
        
    }
}

- (void)kekekek{
    [indicator stopAnimating];
}
@end
