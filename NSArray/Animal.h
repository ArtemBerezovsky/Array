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



// варнинг утверждает, что необходимо знать. Может ли NSString быть нулевым или нет. укажи идентификатор nullability(nonnull/nullable) перед NSString
- (NSString *) convertToStringAnimal: (SizeAnimal) whatAnimal;

@end
