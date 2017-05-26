//
//  Animal.h
//  NSArray
//
//  Created by Admin on 20/05/17.
//  Copyright © 2017 Artem Berezovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    Big,
    Small,
    defaultSize
    
}SizeAnimal;

@interface Animal : NSObject

@property (nonatomic, strong) NSString* color;
@property (nonatomic, assign) SizeAnimal size;



-(void) movementAnimal;

- (NSString*) convertToStringAnimal:(SizeAnimal) whatAnimal;

@end
