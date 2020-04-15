//
//  DosyaOku.m
//  learn-obj-c-ios
//
//  Created by Mac on 15.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "DosyaOku.h"

@implementation DosyaOku

+ (NSString *)okuWithResource:(NSString *)resource andType:(NSString *)type {
    
    NSString *path  = [[NSBundle mainBundle] pathForResource: resource ofType: type ];
    NSString *icerik = nil;
    if( [path length] > 0 ){
    icerik = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
        
    }else {
        
       NSException *ex = [NSException
                exceptionWithName:@"FileNotFoundException"
                reason:@"File Not Found on System"
                userInfo:nil];
        
        @throw ex;
    }
    
    return icerik;
}


+ (NSString *)telefondakiKlasordenOkuWithResource:(NSString *)resource andType:(NSString *)type {
    
    
    // Telefonunzdaki uygulamnizin
       // yuklendikten sonra
       // telefonunuzdaki dosyalara
       // ulasmak icin
       // kullanilan yontemdir.
       
       
       // 1. Kisim
       //
       //
       NSArray *dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
       
       NSString *docsDir = dirPaths[0];
       NSLog(@" path : %@ ", docsDir);
       
       NSMutableString *filePath = [[NSMutableString alloc] initWithString:docsDir];
       [filePath appendString:@"/"];
       [filePath appendString:resource]; // yenidosya
       [filePath appendString:type];     // txt
    
       NSLog(@" file path : %@ ", filePath );
       
       NSString *yeniDosyayaYazilacakYazi = @"yeni yeni yeni";
       
      
       // 2. Kisim
       //
       //
       // thread buna yazarken baska thread
       // erismemesi icin atomically YES
       // yazilir
       
      // Dosyaya yazilma isleminini yapildigi yer
       NSError *err ;
       [yeniDosyayaYazilacakYazi writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:&err];
       
       if ( err  ){
           NSLog(@"dosyaya yazilirken hata");
       }else{
           NSLog(@"yenidosya.txt ye yazildi");
       }
       
       
       // Buna benzer bir klasor cikar.
       // Users/ko/Library/Developer/CoreSimulator/Devices/DA9B5837-9DA8-44C5-8FE7-E9B90FFC2FAB/data/Containers/Data/Application/152EBCBD-FD99-4427-A270-0FD0690C3EA1/Documents
       
   
    NSString *icerik2 = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:NULL];
        
    
    return icerik2;
       
       
    
}
@end
