//
//  Portfolio.m
//  Stock
//
//  Created by Rick Anderson on 6/18/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import "Portfolio.h"
#import "ForeignStockHolding.h"

@implementation Portfolio
float total;

- (float)currentValue:(NSMutableArray *)listOfStock
{
    for (StockHolding *stockItem in listOfStock) {
        total += [stockItem currentSharePrice] * [stockItem numberOfShares];
    }
    return total;
}

@end
