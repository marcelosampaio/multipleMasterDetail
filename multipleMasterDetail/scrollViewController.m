//
//  scrollViewController.m
//  multipleMasterDetail
//
//  Created by Marcelo Sampaio on 1/11/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "scrollViewController.h"

@interface scrollViewController ()

@end

@implementation scrollViewController

@synthesize scroll;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self loadScrollContent];
}


-(void)loadScrollContent
{
    NSLog(@"loadScrollContent");
    int scrollHeigth=3550;
    // Inicializa o scrollView
    self.scroll.scrollEnabled=YES;
    self.scroll.contentSize=CGSizeMake(self.view.bounds.size.width,scrollHeigth);
    self.scroll.autoresizingMask = UIViewAutoresizingFlexibleHeight;

    // debug lines - only for the testings
    for (int i=15; i<scrollHeigth; i=i+15) {
        UILabel *msg=[[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2, i, 100, 20)];
        if (i<3000) {
            msg.text=[NSString stringWithFormat:@"%d",i];
        }else{
            msg.text=[NSString stringWithFormat:@" "];
        }
        msg.textAlignment=NSTextAlignmentRight;
        [self.scroll addSubview:msg];
    }

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
