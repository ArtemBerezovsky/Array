//
//  Runner.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Runner.h"

@implementation Runner

const NSString* kNameRunner = @"defaultRunnerName";


-(id) init
{
    self = [super init];
    if(self!=nil)
    {
        
        self.name = kNameRunner;
        self.weight = 3;
        self.grouth = 3;
        self.gender = genderMale;
        
    }
    return self;
}



-(void) movement
{
    NSLog(@"Movenment Runner");
}

@end
