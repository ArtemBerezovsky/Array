//
//  Cyclist.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Cyclist.h"

static const NSString *kNameCyclest = @"defaultCyclystName";


@implementation Cyclist



- (instancetype) init
{
    self = [super init];
    if (self != nil)
    {
        self.name = kNameCyclest;
        self.weight = 2;
        self.grouth = 2;
        self.gender = genderMale;
        
    }
    return self;
}

- (void) movement
{
    NSLog(@"Movenment Cyclist");
}



@end
