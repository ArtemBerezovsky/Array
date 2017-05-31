//
//  Animal.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Animal.h"

// для NSString пишут в таокм порядке static NSString *const ИМЯ_ПЕРЕМЕННОЙ. Поправить везде.
static const NSString *kColor = @"defautlColor";


@implementation Animal


- (instancetype) init
{
    self = [super init];
// пробел. проверить и поправить везде
    if(self != nil)
    {
// неисправлено!!! Создать объект и присвоить!!! Исправить везде
        _color = kColor;
        _size = SizeAnimalDefault;
        _animalName = @"defaultName";
    }
    
    return self;
}

// Пробел после типа (NSString) Неисправлено!
- (NSString*) convertToStringAnimal: (SizeAnimal) whatAnimal
{
    NSString *result = nil;
// пробел
    switch(whatAnimal)
    {
        case SizeAnimalBig:
        {
            result = @"BIG";
            break;
        }
           
        case SizeAnimalSmall:
        {
            result = @"Small";
            break;
        }
        default:
        {
            result = @"defaultSize";
        }
    }
    
    return result;
}



- (void) movementAnimal
{
    NSLog(@"movementAnimal");
}

@end
