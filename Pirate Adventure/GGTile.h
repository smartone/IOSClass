//
//  GGTile.h
//  Pirate Adventure
//
//  Created by me on 10/10/13.
//  Copyright (c) 2013 me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGWeapon.h"
#import "GGArmor.h"

@interface GGTile : NSObject

@property (strong ,nonatomic) NSString *story;
@property (strong ,nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) GGWeapon *weapon;
@property (strong, nonatomic) GGArmor *armor;
@property(nonatomic) int healthEffect;



@end
