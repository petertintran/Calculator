//
//  ViewController.m
//  Calculator
//
//  Created by Lion User on 18/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize calcDisplay = _calcDisplay;

- (IBAction)button0:(id)sender
{}

- (IBAction)button1:(id)sender
{}

- (IBAction)button2:(id)sender
{}

- (IBAction)button3:(id)sender
{}

- (IBAction)button4:(id)sender
{}

- (IBAction)button5:(id)sender
{}

- (IBAction)button6:(id)sender
{}

- (IBAction)button7:(id)sender
{}

- (IBAction)button8:(id)sender
{}

- (IBAction)button9:(id)sender
{}

- (IBAction)buttonPlus:(id)sender
{}

- (IBAction)buttonMinus:(id)sender
{}

- (IBAction)buttonMultiply:(id)sender
{}

- (IBAction)buttonDivide:(id)sender
{}

- (IBAction)buttonEqual:(id)sender
{}


- (IBAction)buttonRoot:(id)sender
{}

- (IBAction)buttonPosNeg:(id)sender
{}

- (IBAction)buttonDecimal:(id)sender
{}

- (IBAction)buttonClear:(id)sender
{}




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setCalcDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
