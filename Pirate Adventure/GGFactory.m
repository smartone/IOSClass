//
//  GGFactory.m
//  Pirate Adventure
//
//  Created by me on 10/10/13.
//  Copyright (c) 2013 me. All rights reserved.
//

#import "GGFactory.h"
#import"GGTile.h"

@implementation GGFactory


-(NSArray *)tiles

{
    GGTile *tile1 =[[GGTile alloc] init];
    tile1.story =@"Captain , we need a fearless leader such as yourself to undertake a voyage . You just stop the evil pirate Boss. Would you like a blunted sword to get started? ";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    GGWeapon *bluntedSword  = [[GGWeapon alloc] init];
    bluntedSword.name = @"Blunted Word";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the sword";
    
    
    GGTile *tile2 =[[GGTile alloc] init];
    tile2.story =@"You have come across an armory . Would you like to upgrade your amor to steel armor?";
     tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpg"];
    GGArmor *steelArmor =[[GGArmor alloc]init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.actionButtonName
    
    = @"Take steel armor";

    GGTile *tile3 =[[GGTile alloc] init];
    tile3.story =@"A mysterious dock appears on the horizon. Should we ask for directions?";
     tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the Dock";
    
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    GGTile *tile4 =[[GGTile alloc] init];
    tile4.story =@"You have found a parrot. This can be used in your armor slot .Parrots are a great defender and are fiercely loyal to the captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    GGArmor *parrotArmor = [[GGArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot ";
  tile4.actionButtonName = @"Adopt Parrot";
    
    GGTile *tile5=[[GGTile alloc] init];
    tile5.story =@"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a Pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpg"];
    GGWeapon *pistolWeapon = [[GGWeapon alloc] init];
    pistolWeapon.damage = 17;
    pistolWeapon.name = @"Pistol";
    tile5.actionButtonName  = @"Take pistol";
    

    
    GGTile *tile6 =[[GGTile alloc] init];
    tile6.story =@" You have been captured by pirates and orderd to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show no fear!";

    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];

    
    GGTile *tile7 =[[GGTile alloc] init];
    tile7.story =@"You have sighted a Pirate battle of the coast. SHould we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those scum!";
    
    GGTile *tile8 =[[GGTile alloc] init];
    tile8.story =@"The Legend of the Deep.The mighty Kraken Appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName
    
    = @"Abandon Ship";
    
    GGTile *tile9 =[[GGTile alloc] init];
    tile9.story =@"You have stumbled upon a hidden cave of Pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasurer";

    
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    GGTile *tile10 =[[GGTile alloc] init];
    tile10.story =@"A group of Pirates attempt to board your ship !!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the invaders";
    
    GGTile *tile11 =[[GGTile alloc] init];
    tile11.story =@"In the deep sea many things found many things can live.Will the fortune bring help or ruin??";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim deeper";

    
    GGTile *tile12 =[[GGTile alloc] init];
    tile12.story =@"Your Final Faceoff with the Fearsome Pirate Boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight!";
    
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles =[[NSArray alloc] initWithObjects:firstColumn,secondColumn, thirdColumn,fourthColumn, nil];
    
    return tiles;


}

-(GGCharacter *)character
{

    GGCharacter *character = [[GGCharacter alloc] init];
    character.health = 100;
    

    GGArmor *cloakArmor = [[GGArmor alloc] init];
    cloakArmor.name = @"Cloak";
    cloakArmor.health = 5;
    character.armor = cloakArmor;
    
    GGWeapon  *fistWeapon = [[GGWeapon alloc] init];
    fistWeapon.name = @"Fists of Fury";
    fistWeapon.damage = 10;
    character.weapon = fistWeapon;
                         
    
    return character;
    

}

-(GGBoss *)boss
{

GGBoss *boss = [[GGBoss alloc] init];
boss.health = 65;
return boss;
    
}
@end
