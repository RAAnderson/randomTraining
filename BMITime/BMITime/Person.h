//
//  Person.h
//  BMITime
//
//  Created by Rick Anderson on 6/17/13.
//  Copyright (c) 2013 NativeX. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}
@property float heightInMeters;
@property int weightInKilos;

- (float)bodyMassIndex;

@end
