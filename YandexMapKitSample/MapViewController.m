//
//  MapViewController.m
//  YandexMapKitSample
//
//  Created by Roman Busyghin on 9/18/11.
//  Copyright 2011 Яндекс. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

- (void)configureAndInstallMapView;

@end


@implementation MapViewController

#pragma mark - View lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:@"MapViewController" bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureAndInstallMapView];
}

- (void)viewDidUnload {
    self.mapView = nil;

    [super viewDidUnload];
}

#pragma mark - Helpers

- (void)configureAndInstallMapView {
    // Replace with your own Yandex Map Kit API key
    self.mapView.apiKey = nil;
    [self.view addSubview:self.mapView];
}

#pragma mark - Properties

@synthesize mapView;

#pragma mark - Memory Management

- (void)dealloc {
    self.mapView = nil;

    [super dealloc];
}

@end