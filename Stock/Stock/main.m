//
//  main.m
//  Stock
//
//  Created by Rick Anderson on 6/17/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        ForeignStockHolding *firstStock = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *secondStock = [[ForeignStockHolding alloc] init];
        ForeignStockHolding *thirdStock = [[ForeignStockHolding alloc] init];
        
        NSMutableArray *portfolio = [[NSMutableArray alloc] init];
        
        [firstStock setPurchaseSharePrice:1.0];
        [firstStock setCurrentSharePrice:1.0];
        [firstStock setNumberOfShares:1];
        [firstStock setConversionRate:0.6];
        
        [secondStock setPurchaseSharePrice:2.0];
        [secondStock setCurrentSharePrice:2.0];
        [secondStock setNumberOfShares:2];
        [secondStock setConversionRate:0.6];
        
        [thirdStock setPurchaseSharePrice:3.0];
        [thirdStock setCurrentSharePrice:3.0];
        [thirdStock setNumberOfShares:3];
        [thirdStock setConversionRate:0.6];
        
        //
        [portfolio addObject:firstStock];
        [portfolio addObject:secondStock];
        [portfolio addObject:thirdStock];
        
        //
        for (StockHolding *stock in portfolio)
        {
            NSLog(@" purchase price: %f, current price: %f, #shares %d, cost in dollars: %f, valueInDollars: %f"
                  , [stock purchaseSharePrice]
                  , [stock currentSharePrice]
                  , [stock numberOfShares]
                  , [stock costInDollars]
                  , [stock valueInDollars]);
        }
        
        Portfolio *newPortfolio = [[Portfolio alloc] init];
        
        float portfolioPrice = [newPortfolio currentValue:portfolio];
        NSLog(@"the total value of your portfolio is: %f", portfolioPrice);
    }
    return 0;
}

