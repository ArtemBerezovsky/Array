//
//  Jumper.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Jumper.h"


@implementation Jumper

// также
#pragma mark - const
const NSString *kNameJumper = @"defaultJumperName";
const NSString *kLastName = @"defaultLastName";

@synthesize lastName = m_lastName;

//пробел
-(instancetype) init
{
    self = [super init];
//пробелы
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
    NSLog(@"Movement Jumper");
    
}


@end
