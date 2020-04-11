//
//  myCustomTableViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 11.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "myCustomTableViewController.h"

@interface myCustomTableViewController ()

@end

@implementation myCustomTableViewController
@synthesize dizi;
@synthesize dizi2;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    dizi = @[@"bir",@"iki",@"uc"];
    dizi2 = @[@"yellow.png",@"blue.png",@"red.png"];
    
    
    
    //for (int i=0; i<30; i++) {
        
    //    NSString *str = [[NSString alloc] initWithFormat:@"%d",i];
        
    //    [dizi addObject:str];
        
    //}
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [dizi count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    NSString *reuseIdentifier = @"myCustomCell";
    // burada yazdigimizi ui dan
    // myCustomCell yazarak esitliyoruz.
    //
    // eski
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    //
    //
    // yeni
    //
    //
    // #import "myCustomTableViewCell.h"
    // bu sininfin header sinifinda
    // import edilmistir
    myCustomTableViewCell *myCustomCell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // UITableViewCell tan tureyen bir sınıftan donus
    // yapılması gerektigi metotun donus parametresinden
    // anlasiliyor

    
    

    // dizinin o satirindaki
    // objeyi ui daki cell in text alanina
    // deger olarak ver
    //
    // eski yontem
    // cell.textLabel.text = [dizi objectAtIndex:indexPath.row];
    //  return cell;
    //
    //
    // yeni yontem
    // dogru fakat calismiyor :) sdk eski oldugundan
    //
    //myCustomCell.myCustomLabelOutlet.text = [dizi objectAtIndex:indexPath.row];
    //myCustomCell.myCustomImageViewOutlet.image  = [UIImage imageNamed: [dizi2 objectAtIndex:indexPath.row ]];
    // otomatik olusturulan yonetim kullaniliyoruz
    myCustomCell.textLabel.text = [dizi objectAtIndex:indexPath.row];
    myCustomCell.imageView.image  = [UIImage imageNamed: [dizi2 objectAtIndex:indexPath.row ]];
    
    
    return myCustomCell;
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
