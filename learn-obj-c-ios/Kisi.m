//
//  Kisi.m
//  learn-obj-c-ios
//
//  Created by Mac on 1.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "Kisi.h"

@interface Kisi()
    
// bu icinde bulunan kisim
// sonradan biz olturduk

// private degiskenler
// tanimlamalari buraya yapilir

// buraya yapilan tanimlar
// @syntesize edilmeye
// gerek duymaz
// ve sadece bu sinif
// icinde kullanilir

@property NSDate *hesapAcmaTarihi;

@end

@implementation Kisi


// tanimladigimiz
// h
// dosyasindaki metolarin
// icerigini dolduralim

- (void)privateKelimesiOlanMetotCagrilamaz {
    // Implementation goes here
}


- (void)deneme1{
    
}

- (int)deneme2{
    return 333;
}

- (NSMutableArray *)deneme3 {
    return [[NSMutableArray alloc] init];
}

- (NSNumber *)sayiyiKendisiyleCarp:(int)sayi{
    return [NSNumber numberWithInt:sayi * sayi];
}

- (NSString *)metodunAdi:(NSString *)param1 metodunSoyadiIleDevamEdiyor:(NSString *)param2{
    
    NSMutableString *result = [[NSMutableString alloc]init];
    
    [result appendString:param1];
    [result appendString:param2];
    
    return result;
}


+ (int)kek{
    return  77;
}

@end
