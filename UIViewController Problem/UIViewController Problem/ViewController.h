//
//  ViewController.h
//  UIViewController Problem
//
//  Created by Nelson Hart on 12-03-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "MapAnnotation.h"
#import "MapPopoverViewController.h"

@interface ViewController : UIViewController <UIPopoverControllerDelegate, MKMapViewDelegate> {
    
    
    IBOutlet MKMapView *map;
    UIStoryboard *storyboard;
    MapPopoverViewController *viewController;
    UIPopoverController *popOverController;
}
@property (nonatomic, strong) IBOutlet MKMapView *map;
@property (nonatomic, strong) UIStoryboard *storyboard;
@property (nonatomic, strong) MapPopoverViewController *viewController;
@property (nonatomic, strong) UIPopoverController *popOverController;
@end
