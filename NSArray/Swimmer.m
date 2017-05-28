//
//  Swimmer.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Swimmer.h"

@implementation Swimmer

const NSString* kNameSwimmer = @"defaultSwimmerName";


- (instancetype) init
{
    self = [super init];
    if(self!=nil)
    {
        
        self.name = kNameSwimmer;
        self.weight = 4;
        self.grouth = 4;
        self.gender = genderFamele;
        
    }
    return self;
}



- (void) movement
{
    NSLog(@"Movenment Swimmer");
}

@end
