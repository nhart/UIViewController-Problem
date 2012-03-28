//
//  MapPopoverViewController.m
//  UIViewController Problem
//
//  Created by Nelson Hart on 12-03-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapPopoverViewController.h"

@interface MapPopoverViewController ()

@end

@implementation MapPopoverViewController

- (id)init
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    NSLog(@"gggggg");
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) || 
    (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}

@end
