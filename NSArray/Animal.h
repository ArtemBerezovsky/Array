//
//  Animal.h
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM (NSUInteger, SizeAnimal)
{
    SizeAnimalBig,
    SizeAnimalSmall,
    SizeAnimalDefault
};

@interface Animal: NSObject

//  nullable лучше писать самым первым, но не обязательно
@property (nonatomic, strong, nullable) NSString *color;
@property (nonatomic, assign) SizeAnimal size;
@property (nonatomic, strong , nullable) NSString *animalName;


// пробел после минуса
- (void) movementAnimal;

// пробел после NSString
- (NSString*) convertToStringAnimal: (SizeAnimal) whatAnimal;

@end
