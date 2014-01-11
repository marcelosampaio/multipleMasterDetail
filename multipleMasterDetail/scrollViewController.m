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
    
    // Inicializa o scrollView
    self.scroll.scrollEnabled=YES;
    
    self.scroll.contentSize=CGSizeMake(self.view.bounds.size.width,3000);
    self.scroll.autoresizingMask = UIViewAutoresizingFlexibleHeight;

    // debug lines - only for the testings
    for (int i=15; i<3000; i=i+15) {
        UILabel *msg=[[UILabel alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/2, i, 100, 20)];
        msg.text=[NSString stringWithFormat:@"%d",i];
        msg.textAlignment=NSTextAlignmentRight;
        [self.scroll addSubview:msg];
    }
    
    // Loading image from local repository
    
//    // Image 1
//    UIImageView *imgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2, 45, 145, 48)];
//    imgView1.image = [UIImage imageNamed:@"CriePortalLogo.jpg"];
//    [self.scroll addSubview:imgView1];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
