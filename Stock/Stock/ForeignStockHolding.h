//
//  ForeignStockHolding.h
//  Stock
//
//  Created by Rick Anderson on 6/17/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}

@property float conversionRate;

@end
