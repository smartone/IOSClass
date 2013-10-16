//
//  GGCharacter.h
//  Pirate Adventure
//
//  Created by me on 10/16/13.
//  Copyright (c) 2013 me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGArmor.h"
#import "GGWeapon.h"

@interface GGCharacter : NSObject

@property (nonatomic) int damage;
@property (nonatomic) int health;
@property (strong, nonatomic) GGArmor *armor;
@property (strong ,nonatomic) GGWeapon *weapon;
@end
