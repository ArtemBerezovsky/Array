//
//  Creator.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Creator.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"

@implementation Creator

@synthesize human = m_human;
@synthesize cyclist = m_cyclist;
@synthesize runner = m_runner;
@synthesize swimmer = m_swimmer;



-(id) init
{
    self = [super init];
    if(self)
    {
        m_human = [[Human alloc] init];
        m_cyclist = [[Cyclist alloc] init];
        m_runner = [[Runner alloc] init];
        m_swimmer = [[Swimmer alloc] init];
    }
    return self;
}

@end
