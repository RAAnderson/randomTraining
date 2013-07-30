//
//  ForeignStockHolding.m
//  Stock
//
//  Created by Rick Anderson on 6/17/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return conversionRate * (purchaseSharePrice * numberOfShares);
}

- (float)valueInDollars
{
    return conversionRate * (currentSharePrice * numberOfShares);
}

@end
