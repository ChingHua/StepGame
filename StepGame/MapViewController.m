//
//  MapViewController.m
//  StepGame
//
//  Created by chiawei on 2015/1/20.
//  Copyright (c) 2015年 NoPay. All rights reserved.
//

@import MapKit;
@import CoreLocation;

#import "MapViewController.h"

@interface MapViewController () <CLLocationManagerDelegate,MKMapViewDelegate>
{
    CLLocationManager *locationManager;
    
    CLLocation *userLocation;
    
    BOOL isFirstEnterMap;
}


@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // create a navigation Item
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemUndo target:self action:@selector(back:)];
    
    self.navigationItem.leftBarButtonItem = backButton;
    
    
    locationManager = [CLLocationManager new];
    
    if ([locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        
        [locationManager requestWhenInUseAuthorization];
        
    }
    
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    locationManager.activityType = CLActivityTypeFitness;
    locationManager.delegate = self;
    [locationManager startUpdatingLocation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - location Manager delegate
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    userLocation = [locations lastObject];
    
    if (isFirstEnterMap == NO) {
        
        
        
        
        
        isFirstEnterMap = YES;
    }
    
    
    
    
}









#pragma mark - button Action
- (IBAction)back:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
