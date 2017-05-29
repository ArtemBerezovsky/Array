//
//  Animal.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Animal.h"


static const NSString *kColor = @"defautlColor";


@implementation Animal


- (instancetype) init
{
    self = [super init];
    if(self != nil)
    {
// Ошибка слева указатель несозданный до этого, а справа значение. Значение не будет сохранено, сначала создай объект, а потом присвой его указателю
// не понял нифига в чем ошибка, как я могу создать объект если я его создаю с помощью этого инита с параметрами свойств?на счет варнинга с этими страками не въезжаю.
// Проблема в том, что у тебя один объект, и на него ссылаются все созданные объекты этого класса. Вместо просто переменной создай NSString с этой строкой
        _color = kColor;
        _size = SizeAnimalDefault;
        _animalName = @"defaultName";
    }
    
    return self;
}

// Пробел после типа (NSString)
- (NSString*) convertToStringAnimal: (SizeAnimal) whatAnimal
{
    NSString *result = nil;
    switch(whatAnimal)
    {
//  тут двоеточие слитно (у case принято так) исправлено
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
