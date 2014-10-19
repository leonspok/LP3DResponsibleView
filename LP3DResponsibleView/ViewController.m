//
//  ViewController.m
//  LP3DResponsibleView
//
//  Created by Игорь Савельев on 19/10/14.
//  Copyright (c) 2014 Leonspok. All rights reserved.
//

#import "ViewController.h"
#import "LP3DResponsibleView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (UIView *view in self.view.subviews) {
        if ([view isKindOfClass:LP3DResponsibleView.class]) {
            ((LP3DResponsibleView *)view).maxRotationAngle = M_PI/6;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Action" message:[NSString stringWithFormat:@"Tapped on %d", [self.view.subviews indexOfObjectIdenticalTo:sender]+1] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}

@end
