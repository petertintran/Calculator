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


@synthesize calcEngine = _calcEngine;
@synthesize calcDisplay = _calcDisplay;

double currentValue = 0;

bool statePlus = false;
bool stateMinus = false;
bool stateMultiply = false;
bool stateDivide = false;
bool stateReadyCalc = false;

bool multCalc = false;



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
    if(statePlus != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '+';
        statePlus = true;
        stateMinus = stateMultiply = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
        }
        [self.calcEngine calculations];
        currentValue = 0;
        stateReadyCalc = true;
    }
    else
    {
        self.calcEngine.currentOperand = currentValue;
        [self.calcEngine calculations];
        self.calcEngine.currentOperation = '+';
        
        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", self.calcEngine.storedOperand];
        currentValue = 0;
        multCalc = true;
    }
}

- (IBAction)buttonMinus:(id)sender
{
    if(stateMinus != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '-';
        stateMinus = true;
        statePlus = stateMultiply = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        [self.calcEngine calculations];
        currentValue = 0;
        stateReadyCalc = true;
    }
    else
    {
        self.calcEngine.currentOperand = currentValue;
        [self.calcEngine calculations];
        self.calcEngine.currentOperation = '-';

        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", self.calcEngine.storedOperand];
        currentValue = 0;
        multCalc = true;
    }
}

- (IBAction)buttonMultiply:(id)sender
{
    if(stateMultiply != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '*';
        stateMultiply = true;
        statePlus = stateMinus = stateDivide = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        //[self.calcEngine calculations];
        currentValue = 0;
        stateReadyCalc = true;
    }
    else
    {
        self.calcEngine.currentOperand = currentValue;
        [self.calcEngine calculations];
        self.calcEngine.currentOperation = '*';
        
        _calcDisplay.text = [NSString stringWithFormat:@"%.0f", self.calcEngine.storedOperand];
        currentValue = 0;
        multCalc = true;
    }
}

- (IBAction)buttonDivide:(id)sender
{
    if(stateDivide != true && stateReadyCalc != true)
    {
        self.calcEngine.currentOperation = '/';
        stateDivide = true;
        statePlus = stateMinus = stateMultiply = false;
        self.calcEngine.storedOperand = currentValue;
        if(multCalc == false)
        {
            self.calcEngine.storedOperand = currentValue;
            
        }
        //[self.calcEngine calculations];
        currentValue = 0;
        stateReadyCalc = true;
    }
    else
    {
        self.calcEngine.currentOperand = currentValue;
        [self.calcEngine calculations];
        self.calcEngine.currentOperation = '/';
        
        _calcDisplay.text = [NSString stringWithFormat:@"%f", self.calcEngine.storedOperand];
        currentValue = 0;
        multCalc = true;
    }
}

- (IBAction)buttonEqual:(id)sender
{}


- (IBAction)buttonRoot:(id)sender
{}

- (IBAction)buttonPosNeg:(id)sender
{}

- (IBAction)buttonDecimal:(id)sender
{}

- (IBAction)buttonClear:(id)sender
{
    currentValue = 0;
    _calcDisplay.text = [NSString stringWithFormat:@"0"];
    self.calcEngine.storedOperand = 0;
    self.calcEngine.currentOperation = '\0';
    self.calcEngine.currentOperand = 0;
    self.calcEngine.incomingOperation = '\0';
    
    statePlus = false;
    stateMinus = false;
    stateMultiply = false;
    stateDivide = false;
    stateReadyCalc = false;
    
    multCalc = false;
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    _calcEngine = [[calcEngine alloc] init];
    self.calcEngine.storedOperand = 0;
    self.calcEngine.currentOperation = '\0';
    self.calcEngine.currentOperand = 0;
    self.calcEngine.incomingOperation = '\0';
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
