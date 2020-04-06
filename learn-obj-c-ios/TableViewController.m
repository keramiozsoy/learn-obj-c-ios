//
//  TableViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 6.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
@synthesize arr1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // UITableViewController dan
    // extend olan sınıf olmalıdır.
    
    // ui element olarak
    // Navigation Controller
    // seçilmelidir.
    // Otomatik icinde
    // TableViewController vardır.
    //
    // Sebebi bir
    // element secildikten sonra
    // table gorunumu ekranda
    // gozukur ardından
    // kaydet veya geri
    // tus ile sonuca ulasiilir.
    //
    // ui elementi ile
    // controller i
    // yani sınıfı secip
    // eslestirme yapmayi
    // unutmuyoruz.
    //
    // Picker view de
    // kac tane eleman
    // var ise o kadar index
    // ile islem yapiyorduk
    // burada da
    // aynı sistem gecerli
    
    
    
    
    arr1 = @[@" AAA ",
            @" BBB ",
            @" CCC ",
            @" DDD ",
            @" EEE "];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source


// table view da kac tane section var ?

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    
    
    return 1; // biz bi tane section yapiyoruz.
    
    
}


// her bir seciton da kacar tane row var ?

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    
    
    return [arr1 count];
    
    
    
    
}


// her cell icin yapilacak ne ise onun islemleri yapilir

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    //  ui dan -> tableview
    // Table View Cell
    // secilip
    // sag taraftan identifier
    // belirliyoruz.
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"denemeIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    // her satiri dizi ile dolduruyoruz.
    cell.textLabel.text = [arr1 objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"hepsinin aciklamasi";
    
    // ui dan -> tableview
    // Prototype Cells
    // ismini verdigimiz identifer
    // secilip
    // sag taraftan
    // style belirleyerek
    // baslik ve acıklama
    // nerede duracagini seciyoruz.
    // Left Detail sec
    
    
    
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
