//
//  Ogrenci.h
//  learn-obj-c-ios
//
//  Created by Mac on 1.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "Kisi.h"

NS_ASSUME_NONNULL_BEGIN

@interface Ogrenci : Kisi

@property int okulNo;


// self, super, constructor, dealloc


// Bu sekilde constructor olusturulur
// initWith ile baslamak zorundadır :)
// self kullanilabilir
- (instancetype) initWithRastgeleMetot:(int) okulNo;

// bu aslinda contractor degildir
// metot ile bir instance olusturup donmek aslinda
+ (instancetype) staticMetotunAdiFarketmez:(int) okulNo;




@end

NS_ASSUME_NONNULL_END
