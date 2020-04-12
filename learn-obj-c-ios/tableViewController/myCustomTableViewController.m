//
//  myCustomTableViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 12.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "myCustomTableViewController.h"

@interface myCustomTableViewController ()

@end

@implementation myCustomTableViewController
@synthesize dizi;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Kisi *k1 = [[Kisi alloc] init];
    k1.adi = @"isim1";
    k1.yasi = 1111;
    
    Kisi *k2 = [[Kisi alloc] init];
    k2.adi = @"isim2";
    k2.yasi = 102;
    
    Kisi *k3 = [[Kisi alloc] init];
    k3.adi = @"isim3";
    k3.yasi = 103;
    
    
    dizi = [NSMutableArray arrayWithObjects:k1,k2,k3, nil];
    
    
    
    
    
    
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
    
    // myCustomRuseIdentifier ui tarafından
    // cell in ismini de aynı deger verdik
    static NSString *myCustomRuseIdentifier = @"myCustomRuseIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:myCustomRuseIdentifier forIndexPath:indexPath];
    
    Kisi *kTemp = [dizi objectAtIndex:indexPath.row];
    
    cell.textLabel.text = kTemp.adi;
    // cell.detailTextLabel.text = [NSString stringWithFormat:@"%d",kTemp.yasi];
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    myCustomViewController *mvc = [segue destinationViewController];
    
    //self.tableView customTableViewContoller dir.
    // listeden secilen index bulunur.
    NSIndexPath *index = [self.tableView indexPathForSelectedRow];
    
    [mvc setGonderilenKisi:[dizi objectAtIndex:index.row]];
    
}



@end
