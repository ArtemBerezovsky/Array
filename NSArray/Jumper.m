//
//  Jumper.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Jumper.h"


static const NSString *kNameJumper = @"defaultJumperName";
static const NSString *kLastName = @"defaultLastName";

@implementation Jumper




@synthesize lastName = m_lastName;

//пробел ++
- (instancetype) init
{
    self = [super init];
//пробелы++
    if (self != nil)
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
    NSLog(@"Movement Jumper");
    
}


@end
