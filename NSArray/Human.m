//
//  Human.m
//  NSArray
//
//  Created by Admin on 19/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import "Human.h"
#import "Jumper.h"
#import "Animal.h"



@implementation Human

// Аналогично Анимал
const NSString *kName = @"defaultHumanName";


- (instancetype) init
{
    self = [super init];
    if(self!=nil)
    {
        //Аналагично Animal
        _name = kName;
        _weight = 67.9;
        _grouth = 1.99;
        _gender = genderMale;
        
    }
    return self;
}


- (void) movement
{
    NSLog(@"Movement human");
}


// пробел после Типа (NSArray)
- (void) jobCycle: (NSArray*) array

{
//count можно писать через точку, так проще читать, ну и лучше сначала писать изменяемое значение, а потом неизменяемое в проверке
    for(NSInteger i = 0; [array count] > i; i++)
    {
//пробел нужен после двоеточия
        Human *human = [array objectAtIndex:i];
//и тут, а еще после if
        if([human isKindOfClass:[Human class]])
        {
        NSLog(@"THIS IS HUMAN!!!");
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
// %d для вывода целых чисел
        NSLog(@"grouth %d", human.grouth);
// пробьел после двоеточия и убери после скобок с типом
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
// пробел
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
// пробелы
            if([human isKindOfClass:[Jumper class]])
            {
//вертикальное выравнивание поехало.
// Не до конца поправил))
// пробел после типа
            Jumper *jumper = (Jumper*) human;
// не там пробел
            NSLog(@"lastname %@" ,jumper.lastName);
            }
        [human movement];
        }
// пробел
        else if ([human isKindOfClass:[Animal class]])
        {
// задания не читал, но выглядит странно, чтьо человек стал зверем. По коду не видно, чтобы Анимал был дочерним классом человека. Что-то тут не так в логике
//  не знаю как приведение типов сделать. Логика в следующем есть на входе массив, в нем разные данные. Нужно что бы для класса человек выводились свои свойста. а когда натыкаемся на класс животное другие. Соответственно присвоение объекта массива указателю Human*human, дает перебрать массив по объектам, но они все становятся с типом Human. А у Human нет свойств Animal, соответсвенно делал какое то приведение типов к Animal, что бы компилятор не ругался типо я не вижу свойств у объекта. Просто я не понимаю как это сделать и сделал , то что видел в уроке, правда там это сделано внутри одной "ветки классов", т.е один класс родитель и все остальные дочерние. Логика в коде сломана, но я не знаю как это сделать по другому. Создавать объект с типом NS_Object?
// у тебя не сработает данное преобразование при выполнении программы. Скорее всего будет краш. Тебе нужен еще класс, дочерними классами которого будут человек и животное. и перебирать объекты родительского класса. а там с помощью isKindOfClass проверять какого типа сейчас объект.
        Animal *animal = (Animal*) human;
        NSLog(@"THIS IS ANIMAL!!!");
        NSLog(@"color %@", animal.color);
        NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
        [animal movementAnimal];
        }
    }
    
}

// пробелы после типов
- (void) outputInTurnOfObjectsFromArray: (NSArray*) array
                              nextArray: (NSArray*) arrayAnmal
{
// все-таки лучше присваивать свое значение, чем оставлять мусор в переменной. Если хочешь понимать, было ли присвоено или нет, присвой сначала NSNotFound переменным ниже (NSNotFound равен 92 и чего-то там какие-то цифры)))) )
    NSInteger maxCount;
    NSInteger minCount;
// пробел
    if([array count] > [arrayAnmal count])
    {
        
        maxCount = [array count];
        minCount = [arrayAnmal count];
    }
    else
    {
        maxCount = [arrayAnmal count];
        minCount = [array count];
    }
    for (NSInteger i = 0; minCount > i; i++)
        
    {   //HumanGO
//пробел
        Human *human = [array objectAtIndex:i];
// пробел
        [human outputHuman:human];
        
        //AnimalGO
// пробел
        Animal *animalGO = [arrayAnmal objectAtIndex:i];
// пробел но в другом месте))
        if([animalGO isKindOfClass: [Human class]])
        {
            NSLog(@"THIS IS HUMAN!!!");
            NSLog(@"name %@", human.name);
            NSLog(@"weight %f", human.weight);
            NSLog(@"grouth %f", human.grouth);
            NSLog(@"gender %@", [human convertToString: (Gender)human.gender]);
// пробел
            NSLog(@"index = %lu", (unsigned long)[array indexOfObject:human]);
// пробел
            if([human isKindOfClass: [Jumper class]])
            {
// пробел
                Jumper *jumper = (Jumper*) human;
// не там пробел
                NSLog(@"lastname %@" ,jumper.lastName);
            }
            [human movement];
        }
        else if ([animalGO isKindOfClass: [Animal class]])
        {
            
            Animal *animal = (Animal*) animalGO;
            NSLog(@"THIS IS ANIMAL!!!");
            NSLog(@"color %@", animal.color);
            NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal)animal.size]);
            [animal movementAnimal];
        }

    }
// сначала изменяемое, потом неизменяемое в проверке цикла
    for (NSInteger i = maxCount - minCount; maxCount > i; i++)
    {
// пробел
        NSLog(@"index i = %li",(long)i);
        //HumanGO
// пробел
        //  а у тебя всегда людей больше? а если будет зверей больше, то краш
        Human *human = [array objectAtIndex:i];
// пробел
        [human outputHuman:human];
    }
}



- (void) outputHuman: (Human*) human
{
// пробел
    if([human isKindOfClass: [Human class]])
    {
        NSLog(@"THIS IS HUMAN!!!");
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
// не там пробел
        NSLog(@"gender %@", [human convertToString:(Gender) human.gender]);
// пробелы
        if([human isKindOfClass:[Jumper class]])
        {
// пробел
            Jumper *jumper = (Jumper*) human;
// пробел не там
            NSLog(@"lastname %@" ,jumper.lastName);
        }
        [human movement];
    }
    else if ([human isKindOfClass: [Animal class]])
    {
// пробел
        Animal *animal = (Animal*) human;
        NSLog(@"THIS IS ANIMAL!!!");
        NSLog(@"color %@", animal.color);
//лишний пробел после приведения типов
        NSLog(@"size %@", [animal convertToStringAnimal: (SizeAnimal) animal.size]);
        [animal movementAnimal];
    }

}

//пробел
- (void) outputAnimal: (Animal*) animal
{
    
}






// пробел
- (void) jobCycleReturn: (NSArray*) array
{
// пробелы, каунт через точку
    for(NSInteger i = [array count]-1; i >= 0; i--)
    {
        Human *human = [array objectAtIndex: i];
        NSLog(@"objectAdress %@", human);
        NSLog(@"name %@", human.name);
        NSLog(@"weight %f", human.weight);
        NSLog(@"grouth %f", human.grouth);
// лишний пробел после приведения типов
        NSLog(@"gender %@", [human convertToString: (Gender) human.gender]);
        NSLog(@"index = %lu", (unsigned long)[array indexOfObject: human]);
        [human movement];
    }
    
}




- (NSString*) convertToString: (Gender) whatGender
{
    NSString *result = nil;
    switch (whatGender)
    {
        case genderFamele:
        { result = @"genderFamale";
            break;
        }
        case genderMale:
        {
            result = @"genderMale";
            break;
        }
        default:
        {
            result = @"unknown";
        }
    }
    
    return result;
}



@end
