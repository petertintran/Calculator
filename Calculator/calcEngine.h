//
//  calcEngine.h
//  Calculator
//
//  Created by Lion User on 29/09/2012.
//  Copyright (c) 2012 Tran.Peter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calcEngine : NSObject
{
    double storedOperand;
    double currentOperand;
    
    char currentOperation;
    char incomingOperation;
    
}

@property (assign) double storedOperand;
@property (assign) double currentOperand;
@property (assign) char currentOperation;
@property (assign) char incomingOperation;

- (void) calculations;



@end
