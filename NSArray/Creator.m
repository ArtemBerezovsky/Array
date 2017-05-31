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
#import "Jumper.h"
#import "Dog.h"
#import "Cat.h"

@implementation Creator

@synthesize human = m_human;
@synthesize cyclist = m_cyclist;
@synthesize runner = m_runner;
@synthesize swimmer = m_swimmer;
@synthesize jumper = m_jumper;
@synthesize dog = m_dog;
@synthesize cat = m_cat;

- (instancetype) init
{
// в методе пропущено 3 пробела
    self = [super init];
    if(self != nil)
    {
        m_human = [[Human alloc] init];
        m_cyclist = [[Cyclist alloc] init];
        m_runner = [[Runner alloc] init];
        m_swimmer = [[Swimmer alloc] init];
        m_jumper = [[Jumper alloc]init];
        m_dog = [[Dog alloc] init];
        m_cat = [[Cat alloc]init];
    }
    return self;
}

@end
