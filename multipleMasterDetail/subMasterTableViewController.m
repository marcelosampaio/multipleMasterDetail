//
//  subMasterTableViewController.m
//  multipleMasterDetail
//
//  Created by Bruno on 1/6/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "subMasterTableViewController.h"
#import "ViewController.h"

@interface subMasterTableViewController ()

@end

@implementation subMasterTableViewController
@synthesize subMasterSource;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadSource];
    
    // display input property
    NSLog(@"carreguei com %@",self.detailItem);
    
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)loadSource
{
    self.subMasterSource=[[NSMutableArray alloc]initWithObjects:@"subMaster-A",@"subMaster-B",@"subMaster-C",@"subMaster-D",@"subMaster-E",@"subMaster-F",@"subMaster-G", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.subMasterSource count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text=[self.subMasterSource objectAtIndex:indexPath.row];
    
    switch (indexPath.row) {
        case 0:
            cell.imageView.image=[UIImage imageNamed:@"104-index-cards.png"];
            break;
        case 1:
            cell.imageView.image=[UIImage imageNamed:@"105-piano.png"];
            break;
        case 2:
            cell.imageView.image=[UIImage imageNamed:@"106-sliders.png"];
            break;
        case 3:
            cell.imageView.image=[UIImage imageNamed:@"108-badge.png"];
            break;
        case 4:
            cell.imageView.image=[UIImage imageNamed:@"109-chicken.png"];
            break;
        case 6:
            cell.imageView.image=[UIImage imageNamed:@"110-bug.png"];
            break;
        default:
            cell.imageView.image=[UIImage imageNamed:@"107-widescreen.png"];
            break;
    }
    return cell;
}

// Passing subMasterTableViewController parameter
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        self.ViewController.detailItem = [self.subMasterSource objectAtIndex:indexPath.row];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail2"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [[segue destinationViewController] setDetailItem:[self.subMasterSource objectAtIndex:indexPath.row]];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
