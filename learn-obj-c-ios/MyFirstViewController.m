//
//  MyFirstViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 3.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "MyFirstViewController.h"

@interface MyFirstViewController ()

@end

@implementation MyFirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    // view controller lar yeni eklendiginden
    // storyboard secilip tek tek view lar secilip
    // custom bolumunden her view controller
    // icin ozel olusuturlan sınıf isimlerini
    // yazıp enter a basiyoruz.
    
    // butonu tut çıkan oku surukle ikinci ekrana bırak
    // add seque
    // modal (depracated)
    // boylece bir ekrandan diger ekrana gittim
    
    // segue ile bir sayfadan digerine veri gondermek
    
    MySecondViewController *svc = [segue destinationViewController];
    svc.str1 = @"deneme";

}


@end
