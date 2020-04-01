//
//  Kisi.h
//  learn-obj-c-ios
//
//  Created by Mac on 1.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Kisi : NSObject

// public degiskenler
// h dosyasina yazilir

// sadece sinif tanimlamalarinda
// yildiz ile isimlendirme
// yapilir

@property NSString *adSoyad;
@property int kimlikNo;
@property BOOL gerekli;



- (void ) deneme1; // void doner

- (int ) deneme2;  // int doner

- (NSMutableArray *) deneme3; // array doner sinif oldugu icin * kullanilir

- (NSNumber * ) sayiyiKendisiyleCarp : ( int ) sayi; // sayi degerini alir ve nsNumber turunde doner


// iki parametreli metot garip sekilde
// her parametreden once yazi yaziliyor
- (NSString * ) metodunAdi : (NSString * ) param1
                metodunSoyadiIleDevamEdiyor: (NSString * ) param2 ;




// + ve - degerleri nedir

// + ile baslayan static metot  ( sinif degiskeni )
// - ile baslayan dynamic metot ( instance degiskeni )
// tanimlamis olursun

+ (int) kek; 










@end

NS_ASSUME_NONNULL_END
