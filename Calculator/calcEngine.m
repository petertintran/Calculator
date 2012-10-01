//
//  calcEngine.m
//  Calculator
//
//  Created by Lion User on 29/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import "calcEngine.h"

@implementation calcEngine

@synthesize storedOperand;
@synthesize currentOperand;
@synthesize incomingOperation;
@synthesize currentOperation;

- (void) calculations
{
    if(self.currentOperation == '+')
    {
        self.storedOperand = self.storedOperand + self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '-')
    {
        self.storedOperand = self.storedOperand - self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '*')
    {
        self.storedOperand = self.storedOperand * self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
    else if(self.currentOperation == '/')
    {
        self.storedOperand = self.storedOperand / self.currentOperand;
        NSLog(@"Stored Input: %.0f", self.storedOperand);
        NSLog(@"Current Input: %.0f", self.currentOperand);
    }
}


@end
