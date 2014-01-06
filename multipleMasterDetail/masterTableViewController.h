//
//  masterTableViewController.h
//  multipleMasterDetail
//
//  Created by Bruno on 1/6/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class subMasterTableViewController;

@interface masterTableViewController : UITableViewController

@property NSMutableArray *masterSource;

//subMasterTableViewController
@property (strong, nonatomic) subMasterTableViewController *subMasterTableViewController;

@end
