//
//  Animal.h
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItsALive.h"

typedef NS_ENUM (NSUInteger, SizeAnimal)
{
    SizeAnimalBig,
    SizeAnimalSmall,
    SizeAnimalDefault
};

@interface Animal: ItsALive


@property (nullable,nonatomic, strong) NSString *color;
@property (nonatomic, assign) SizeAnimal size;
@property (nonatomic, strong , nullable) NSString *animalName;



// пробел после NSString
- (NSString *) convertToStringAnimal: (SizeAnimal) whatAnimal;

@end
