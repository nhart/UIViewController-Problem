//
//  MapAnnotation.m
//  UIViewController Problem
//
//  Created by Nelson Hart on 12-03-28.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MapAnnotation.h"

@implementation MapAnnotation

@synthesize coordinate;
@synthesize title, subtitle;


- (id)initWithCoordinate:(CLLocationCoordinate2D)aCoordinate
{
    self = [super init];
    if (self) {
        coordinate = aCoordinate;
        title = subtitle = nil;
    }
    
    return self;
}
@end
