//
//  Ogrenci.m
//  learn-obj-c-ios
//
//  Created by Mac on 1.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "Ogrenci.h"

@implementation Ogrenci

- (instancetype)initWithRastgeleMetot:(int)okulNo{
    self = [super init];
    if(self){
        self.okulNo = okulNo;
    }
    return self;
}

+ (instancetype)staticMetotunAdiFarketmez:(int)okulNo{
    return [[Ogrenci alloc] initWithRastgeleMetot:okulNo];
}


@end
