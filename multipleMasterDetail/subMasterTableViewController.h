//
//  subMasterTableViewController.h
//  multipleMasterDetail
//
//  Created by Bruno on 1/6/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface subMasterTableViewController : UITableViewController

@property NSMutableArray *subMasterSource;

//ViewController  (detail)
@property (strong, nonatomic) ViewController *ViewController;

@end
