//
//  Human.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Human.h"
#import "Jumper.h"
#import "Animal.h"

static const NSString *kName = @"defaultHumanName";

@implementation Human

- (instancetype) init
{
    self = [super init];
    if(self!=nil)
    {
        //Аналагично Animal
        _name = kName;
        _weight = 67.9;
        _grouth = 1.99;
        _gender = genderMale;
        
    }
    return self;
}


- (void) movement
{
    NSLog(@"Movement human");
}



- (NSString*) convertToString: (Gender) whatGender
{
    NSString *result = nil;
    switch (whatGender)
    {
        case genderFamale:
        { result = @"genderFamale";
            break;
        }
        case genderMale:
        {
            result = @"genderMale";
            break;
        }
        default:
        {
            result = @"unknown";
        }
    }
    
    return result;
}



@end
