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

double storedValue = 0;
double currentValue = 0;

bool statePlus = false;
bool stateMinus = false;
bool stateMultiply = false;
bool stateDivide = false;
bool stateReadyCalc = false;




- (IBAction)button0:(id)sender
{
    currentValue = (currentValue * 10) + 0;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button1:(id)sender
{
    currentValue = (currentValue * 10) + 1;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button2:(id)sender
{
    currentValue = (currentValue * 10) + 2;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button3:(id)sender
{
    currentValue = (currentValue * 10) + 3;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button4:(id)sender
{
    currentValue = (currentValue * 10) + 4;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button5:(id)sender
{
    currentValue = (currentValue * 10) + 5;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button6:(id)sender
{
    currentValue = (currentValue * 10) + 6;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button7:(id)sender
{
    currentValue = (currentValue * 10) + 7;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button8:(id)sender
{
    currentValue = (currentValue * 10) + 8;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)button9:(id)sender
{
    currentValue = (currentValue * 10) + 9;
    _calcDisplay.text = [NSString stringWithFormat:@"%.0f", currentValue];
}

- (IBAction)buttonPlus:(id)sender
{
    if(statePlus == true && stateReadyCalc == true)
    {
        storedValue = storedValue + currentValue;
        currentValue = 0;
        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", storedValue];
    }
    else
    {
        statePlus = true;
        storedValue = currentValue;
        currentValue = 0;
        stateReadyCalc = true;
    }
        
}

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
