//
//  Animal.m
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Animal.h"



@implementation Animal


// у тебя переменная одинакова для всех классов, поэтому её моджно вынести за имплементацию и сказать, что она static
const NSString* kColor = @"defautlColor";

// вместо  id лучше испольщовать instance type
-(id) init
{
    self = [super init];
    if(self != nil)
    {
// Ошибка слева указатель несозданный до этого, а справа значение. Значение не будет сохранено, сначала создай объект, а потом присвой его указателю
        _color = kColor;
        _size = defaultSize;
    }
    
    return self;
}

// соблюдай код стайл, выше у тебя есть пернос скобки на новую строку, а тут нету, точки и двоеточия тоже поправь с помощью пробелов
- (NSString*) convertToStringAnimal:(SizeAnimal) whatAnimal {
    NSString *result = nil;
    
    switch(whatAnimal) {
            
// если case  включает несколько строк, то лучше использовать скобки фигурные для обозначения блока  { строки }
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
