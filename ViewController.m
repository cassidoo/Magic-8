//
//  ViewController.m
//  CrystalBall
//
//  Created by Williams, Cassidy on 7/10/13.
//  Copyright (c) 2013 Cassidy Williams. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize predictionLabel;
@synthesize predictionArray;
@synthesize imageView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"magic8.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    [self.view insertSubview:self.imageView atIndex:0];
    
    self.imageView.animationImages = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"frame1"], [UIImage imageNamed:@"frame1"],
    [UIImage imageNamed:@"frame2"],
    [UIImage imageNamed:@"frame3"],
    [UIImage imageNamed:@"frame4"],
    [UIImage imageNamed:@"frame5"],
    [UIImage imageNamed:@"frame6"],
    [UIImage imageNamed:@"frame7"],
    [UIImage imageNamed:@"frame8"],
    [UIImage imageNamed:@"frame9"],
    [UIImage imageNamed:@"frame10"],
    [UIImage imageNamed:@"frame11"],
    [UIImage imageNamed:@"frame12"],
    [UIImage imageNamed:@"frame13"],
    [UIImage imageNamed:@"frame14"],
    [UIImage imageNamed:@"frame16"],
    [UIImage imageNamed:@"frame17"],
    [UIImage imageNamed:@"frame18"],
    [UIImage imageNamed:@"frame19"],
    [UIImage imageNamed:@"frame20"],
    [UIImage imageNamed:@"frame21"],
    [UIImage imageNamed:@"frame22"],
    [UIImage imageNamed:@"frame23"],
    [UIImage imageNamed:@"frame24"],
    [UIImage imageNamed:@"frame25"],
    [UIImage imageNamed:@"frame26"],
    [UIImage imageNamed:@"frame27"],
    [UIImage imageNamed:@"frame28"],
    [UIImage imageNamed:@"frame29"],
    [UIImage imageNamed:@"frame30"],
    [UIImage imageNamed:@"frame31"],
    [UIImage imageNamed:@"frame32"],
    [UIImage imageNamed:@"frame33"],
    [UIImage imageNamed:@"frame34"],
    [UIImage imageNamed:@"frame35"],
    [UIImage imageNamed:@"frame36"],
    [UIImage imageNamed:@"frame37"],
    [UIImage imageNamed:@"frame38"],
    [UIImage imageNamed:@"frame39"],
    [UIImage imageNamed:@"frame40"],
    [UIImage imageNamed:@"frame41"],
    [UIImage imageNamed:@"frame42"],
    [UIImage imageNamed:@"frame43"],
    [UIImage imageNamed:@"frame44"],
    [UIImage imageNamed:@"frame45"],
    [UIImage imageNamed:@"frame46"],
    [UIImage imageNamed:@"frame47"],
    [UIImage imageNamed:@"frame48"],
    [UIImage imageNamed:@"frame49"],
    [UIImage imageNamed:@"frame50"],
    [UIImage imageNamed:@"frame51"],
    [UIImage imageNamed:@"frame52"],
    [UIImage imageNamed:@"frame53"],
    [UIImage imageNamed:@"frame54"],
    [UIImage imageNamed:@"frame55"],
    [UIImage imageNamed:@"frame56"],
    nil];
    self.imageView.animationDuration = 1.0;
    self.imageView.animationRepeatCount = 1;
                      
    self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain.", @"It is decidedly so.", @"Unlikely, bro.", @"No way, José.", @"lol nope.", @"Naw.", @"Totes probs", @"Aww yeah.", @"Let me ponder.", @"Yes!", @"Do you even lift?", nil];
}

- (void) makePrediction
{
    [self.imageView startAnimating];
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    
    [UIView animateWithDuration:2.0 animations:^{
        self.predictionLabel.alpha = 1.0;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if(motion == UIEventSubtypeMotionShake)
    {
        [self makePrediction];
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"motion cancelled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediction];
}

@end
