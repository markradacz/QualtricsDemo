//
//  ViewController.m
//  QualtricsDemo
//
//  Created by agile-27 on 01/05/19.
//  Copyright © 2019 agile-27. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)buttonTap:(UIButton *)sender
{
    [Qualtrics.shared evaluateTargetingLogicWithCompletion:^(TargetingResult * _Nonnull targetingResult) {
        if ([targetingResult passed]) {
            [Qualtrics.shared displayWithViewController:self];
        }
    }];
    
}


@end
