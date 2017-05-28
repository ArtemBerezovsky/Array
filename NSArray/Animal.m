//
//  Animal.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Animal.h"

// у тебя переменная одинакова для всех классов, поэтому её моджно вынести за имплементацию и сказать, что она static
// поправил
static const NSString* kColor = @"defautlColor";

@implementation Animal



// вместо  id лучше испольщовать instance type
- (instancetype) init
{
    self = [super init];
    if(self != nil)
    {
// Ошибка слева указатель несозданный до этого, а справа значение. Значение не будет сохранено, сначала создай объект, а потом присвой его указателю
// не понял нифига в чем ошибка, как я могу создать объект если я его создаю с помощью этого инита с параметрами свойств?на счет варнинга с этими страками не въезжаю.
        _color = kColor;
        _size = SizeAnimalDefault;
        _animalName = @"defaultName";
    }
    
    return self;
}

// соблюдай код стайл, выше у тебя есть пернос скобки на новую строку, а тут нету, точки и двоеточия тоже поправь с помощью пробелов
- (NSString*) convertToStringAnimal: (SizeAnimal) whatAnimal
{
    NSString *result = nil;
    switch(whatAnimal)
    {
            
// если case  включает несколько строк, то лучше использовать скобки фигурные для обозначения блока  { строки }
        case SizeAnimalBig :
        {
            result = @"BIG";
            break;
        }
           
        case SizeAnimalSmall :
        {
            result = @"Small";
            break;
        }
        default :
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
