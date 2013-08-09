//
//  ViewController.h
//  CrystalBall
//
//  Created by Williams, Cassidy on 7/10/13.
//  Copyright (c) 2013 Cassidy Williams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSArray *predictionArray;
}

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictionArray;
@property (strong, nonatomic) UIImageView *imageView;

- (void) makePrediction;

@end
