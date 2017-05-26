//
//  Dog.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Dog.h"

@implementation Dog

const NSString* kColorDog = @"Black";


-(id) init
{
    self = [super init];
    if(self != nil)
    {
        self.color = kColorDog;
        self.size = Big;
    }
    
    return self;
}

-(void) movementAnimal
{
    NSLog(@"movementDOG");
}


@end
