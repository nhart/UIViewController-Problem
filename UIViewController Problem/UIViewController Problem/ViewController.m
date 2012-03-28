//
//  ViewController.m
//  UIViewController Problem
//
//  Created by Nelson Hart on 12-03-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize map;
@synthesize storyboard;
@synthesize viewController;
@synthesize popOverController;


- (MKAnnotationView *)mapView:(MKMapView *)aMapView viewForAnnotation:(id <MKAnnotation>)annotation {
    MKAnnotationView *annotationView;
    
    MapAnnotation *mAnnot = (MapAnnotation *)annotation;
    annotationView = (MKAnnotationView *)[aMapView dequeueReusableAnnotationViewWithIdentifier:@"singleAnnotationView"];
    annotationView = [[MKAnnotationView alloc] initWithAnnotation:mAnnot reuseIdentifier:@"singleAnnotationView"];
    annotationView.canShowCallout = YES;
    annotationView.centerOffset = CGPointMake(0, -20);
    annotationView.image = [UIImage imageNamed:@"mapicon-text-group.png"];
    return annotationView;
}
    
- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
    
    
    //display basic popover on map
    if([view.annotation isKindOfClass:[MapAnnotation class]]){

        storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle:nil];
        viewController = [storyboard instantiateViewControllerWithIdentifier:@"MapPopover"];
        
        
        popOverController = [[UIPopoverController alloc] initWithContentViewController:viewController];
        
        [popOverController presentPopoverFromRect:view.bounds inView:view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
        
        //de-select annotation so the map will detect if you tap it again
        [map deselectAnnotation:view.annotation animated:NO];
    }
    
    
    
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //add test annotation to map
    CLLocationCoordinate2D coord;
    coord.latitude = 41.237042;
    coord.longitude = -61.130768;
    MapAnnotation *test1 = [[MapAnnotation alloc] initWithCoordinate:coord];
    test1.title = @"testing annotation1";
    [map addAnnotation:test1];
    
    
    coord.latitude = 33.3;
    coord.longitude = -66.5;
    MapAnnotation *test2 = [[MapAnnotation alloc] initWithCoordinate:coord];
    test2.title = @"testing annotation2";
    [map addAnnotation:test2];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
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
