//
//  Animal.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Animal.h"



@implementation Animal


const NSString* kColor = @"defautlColor";

-(id) init
{
    self = [super init];
    if(self != nil)
    {
        _color = kColor;
        _size = defaultSize;
    }
    
    return self;
}


- (NSString*) convertToStringAnimal:(SizeAnimal) whatAnimal {
    NSString *result = nil;
    
    switch(whatAnimal) {
        case Big:
            result = @"BIG";
            break;
        case Small:
            result = @"Small";
            break;
            
        default:
            result = @"defaultSize";
    }
    
    return result;
}



-(void) movementAnimal
{
    NSLog(@"movementAnimal");
}

@end
