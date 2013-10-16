//
//  GGFactory.h
//  Pirate Adventure
//
//  Created by me on 10/10/13.
//  Copyright (c) 2013 me. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGCharacter.h"
#import "GGBoss.h"

@interface GGFactory : NSObject

-(NSArray *)tiles;

- (GGBoss *)boss;
-(GGCharacter *)character;



@end
