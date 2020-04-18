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
    
    
    
    NSString *icerik = nil;
    @try {

        icerik =  [DosyaOku okuWithResource:@"deneme" andType:@"json"];
        
        NSLog(@" %@ ",  icerik);
        
        NSLog(@" Yukaridaki yazim sekli enconding problemi olusturur ");
        
    } @catch (NSException *exception) {
        NSLog(@" icerik bulunamadi");
    }
    
    NSData *data = [icerik dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:NULL];
    
    // kNilOptions - json icinde hic bosluk kalmasin
    
    NSLog(@" dic %@ ",dic);
    
    NSArray *kisiler = [dic objectForKey:@"kisiler"];
    
    NSLog(@" kisiler %@ ", kisiler);
    
    NSDictionary *dic00 = [kisiler objectAtIndex:0];
    
    NSLog(@" dic00 %@ ", dic00);
    
    NSDictionary *dic01 = [kisiler objectAtIndex:1];
    
    NSLog(@" dic01 %@ ", dic01);
    
    NSString *dic00Ad = [dic00 objectForKey:@"ad"];
    NSNumber *dic00Yas = [dic00 objectForKey:@"yas"];
    
    NSLog(@" dic00Ad %@ ", dic00Ad);
    NSLog(@" dic00Yas %@ ", dic00Yas);
    
    NSString *dic01Ad = [dic01 objectForKey:@"ad"];
    NSNumber *dic01Yas = [dic01 objectForKey:@"yas"];
    
    NSLog(@" dic01Ad %@ ", dic01Ad);
    NSLog(@" dic01Yas %@ ", dic01Yas);
    
    // yukarisi json to object
    // asagisi object to json
    
    NSMutableDictionary *dicJson = [NSMutableDictionary dictionary];
    
    NSMutableDictionary *dicKisiJson = [NSMutableDictionary dictionary];
    
    NSString *adJson = @"CCC";
    NSNumber *yasJson = [NSNumber numberWithInteger:33];
    
    [dicKisiJson setObject:adJson forKey:@"ad"];
    [dicKisiJson setObject:yasJson forKey:@"yas"];

    [dicJson setObject:dicKisiJson forKey:@"kisi"];
    
    NSData *prepareData = [NSJSONSerialization dataWithJSONObject:dicJson options:NSJSONWritingPrettyPrinted error:NULL];
    
    NSString *prepareStr = [[NSString alloc] initWithData:prepareData encoding:NSUTF8StringEncoding];
    
    
    NSLog(@" prepared : %@   ", prepareStr);
    
    
    
    
    
    
    
    
    
    
    
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
