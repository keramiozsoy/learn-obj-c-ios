//
//  ViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 19.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    // egodatabase wrapper kutuphanesini kullandik
    // proje dosyalarini kopyaliyoruz
    //
    // daha sonra
    // xcode -> project explorer dan en ust katmandaki
    // proje ismine tikliyoruz
    //
    // Build Phases sekmesine gidiyoruz.
    // Link Binary with Libraries tikliyoruz
    // + ya basip sqlite database ini library
    // olarak ekliyoruz
    //
    // libsqlite3.tdb or libsqlite3.dylib
    //
    // dosya olarak ekledigimiz siniflar
    // yardimiyla libsqlite3 a erisecegiz.
    
    
    
    // ARC - automatic reference counting
    //
    // Her olusturdugunuz objeyi
    // isiniz bittikten sonra
    // baginizi koparmak zorundaydiniz.
    // ram islemlerini manuel olarak
    // bu sekilde yonetmek zorundaydiniz.
    // ama artık Xcode derleyicisi
    // bunu kendi yapiyor.
    
    // Peki ARC destekli bir component
    // kullanmiyorsak ne olacak.
    
    // egodatabase arc destekli degildir
    //
    // xcode -> project explorer
    // Build Phases sekmesine gidiyoruz.
    // compile source
    // egodatabase dosyalarinia compiler flag
    //
    // -fno-objc-arc
    //
    // yazisini ekliyoruz.
    //
    
    
    

    NSArray *dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    NSString *docsDir = dirPaths[0];
    NSLog(@" path : %@ ", docsDir);
    
    NSMutableString *filePath = [[NSMutableString alloc] initWithString:docsDir];
    [filePath appendString:@"/"];
    [filePath appendString:@"database"];
    [filePath appendString:@".sqlite3"];
    
    NSLog(@" file path : %@ ", filePath );
    
    // DB olustur
    EGODatabase *db = [EGODatabase databaseWithPath:filePath];
    
    if ([db open]){
        NSLog(@"DB olusturulmustur.");
    }
    
    
    EGODatabaseResult *result = [ db executeQuery:@"CREATE TABLE IF NOT EXISTS KISI ('ID' INTEGER PRIMARY KEY  NOT NULL  UNIQUE , 'ISIM' VARCHAR(50), 'YAS' INTEGER, 'DOGUMTARIHI' INTEGER) " ];
    
    
    result = [db executeQuery:@" SELECT * FROM KISI "];
    
    result = [db executeQuery:@" INSERT INTO KISI (ISIM,YAS) VALUES ( 'Ali', 50 ) "];
    
    
    for( EGODatabaseRow *row in result ) { // fast enumaration
        NSLog(@" isim : %@, yas : %d ", [row stringForColumn:@"ISIM"], [row intForColumn:@"YAS"]);
    }
    
    
    
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
