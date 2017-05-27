//
//  Animal.h
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

// несколько лучше было бы написать следующим образом
//typedef NS_ENUM (NSUInteger, SizeAnimal)
//{
//  SizeAnimalBig,
//  SizeAnimalSmall,
//  и так далее
//}
// Это позволит через месц вспомнить зачем ты делал это перечисление

typedef enum
{
    Big,
    Small,
    defaultSize
    
}SizeAnimal;

@interface Animal : NSObject

//  для указателей в .h файлах обязательно указываем Nullability параметр
@property (nonatomic, strong) NSString* color;
@property (nonatomic, assign) SizeAnimal size;


// пробел после минуса
-(void) movementAnimal;

// пробел после Типа и двоеточия
- (NSString*) convertToStringAnimal:(SizeAnimal) whatAnimal;

@end
