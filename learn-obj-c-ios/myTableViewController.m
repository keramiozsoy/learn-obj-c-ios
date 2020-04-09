//
//  myTableViewController.m
//  learn-obj-c-ios
//
//  Created by Mac on 9.04.2020.
//  Copyright © 2020 Mac. All rights reserved.
//

#import "myTableViewController.h"

@interface myTableViewController ()

@end

@implementation myTableViewController
@synthesize dizi;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dizi = [NSMutableArray array];
    
    [dizi addObject:@"111"];
    [dizi addObject:@"222"];
    [dizi addObject:@"333"];
    
    UIRefreshControl *myRefresh = [[UIRefreshControl alloc] init];
    
    // ekranda gostermek
    self.refreshControl = myRefresh;
    
    // yenileme calisinca cagirilacak metot
    [myRefresh addTarget:self action:@selector( yenileVeElemanEkle ) forControlEvents:UIControlEventValueChanged];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (void) yenileVeElemanEkle {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterNoStyle];
    [formatter setTimeStyle:NSDateFormatterFullStyle];
    NSString *sonuc = [formatter stringFromDate: [NSDate date]];
    [dizi addObject: sonuc];
    
    // veri ekledikten sonra
    // ui da veri gozukmesi icin
    // son veriyi tekrar gondermeliyiz
    [self.tableView reloadData];
    
    // yenilemeyi bitir
    [self.refreshControl endRefreshing];
    
}


// herhangi bir eleman secildiginde calisan metot
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@" %d section %d row",indexPath.section, indexPath.row);
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [dizi count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    // indexPath
    // satir veya sutuna erismek icindir.
    
    cell.textLabel.text = [dizi objectAtIndex:indexPath.row];
    
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
