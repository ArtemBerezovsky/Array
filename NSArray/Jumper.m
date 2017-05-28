//
//  Jumper.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Jumper.h"


@implementation Jumper

#pragma mark - const
const NSString *kNameJumper = @"defaultJumperName";
const NSString *kLastName = @"defaultLastName";

@synthesize lastName = m_lastName;

-(instancetype) init
{
    self = [super init];
    if(self!=nil)
    {
        
        self.name = kNameJumper;
        self.weight = 5;
        self.grouth = 5;
        self.gender = genderMale;
        m_lastName = kLastName;
    }
    return self;
}

- (void) movement
{
    [super movement];
    NSLog(@"Movenment Jumper");
    
}


@end
