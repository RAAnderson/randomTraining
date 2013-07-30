//
//  StockHolding.m
//  Stock
//
//  Created by Rick Anderson on 6/17/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize purchaseSharePrice, currentSharePrice, numberOfShares;

- (float)costInDollars
{
    return purchaseSharePrice * numberOfShares;
}

- (float)valueInDollars
{
    return currentSharePrice * numberOfShares;
}


@end
