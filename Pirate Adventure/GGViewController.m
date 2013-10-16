

//
//  GGViewController.m
//  Pirate Adventure
//
//  Created by me on 10/10/13.
//  Copyright (c) 2013 me. All rights reserved.
//

#import "GGViewController.h"
#import "GGFactory.h"
#import "GGTile.h"



@interface GGViewController ()

@end

@implementation GGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    GGFactory *factory = [[GGFactory alloc] init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    
    
    
    self.currentPoint = CGPointMake(2, 2);
    [self updateCharacterStatsForAmor:nil withWeapons:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
    
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
    GGTile *tile =[[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15){
        self.boss.health = self.boss.health - self.character.damage;
        }
    [self updateCharacterStatsForAmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.character.health <=0) {
        
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"You have died restart the game!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
    }
    else if (self.boss.health <= 0) {
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory"message:@"You killed the evil pirate boss!" delegate:Nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        
        [alertView show];
        
    }
    
    
    [self updateTile ];
    
}

#pragma mark - IBAction

- (IBAction)northButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x , self.currentPoint.y + 1);
    
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x -1 , self.currentPoint.y);
    
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1 );
    
    [self updateButtons];
    [self updateTile];
    
    
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y );
    
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    
    self.character =nil;
    self.boss = nil;
    [self viewDidLoad];
}

#pragma mark - helper methods

-(void)updateTile
{
    
    GGTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x ] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i" ,self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i" ,self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weaponLabel.text = self.character.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];


    
}

-(void)updateButtons
{
    self.westButton.hidden = [self tileExistAtPoint:CGPointMake(self.currentPoint.x -1 ,self.currentPoint.y)];
    
    self.eastButton.hidden = [self tileExistAtPoint:CGPointMake(self.currentPoint.x + 1 ,self.currentPoint.y)];
    
    self.northButton.hidden = [self tileExistAtPoint:CGPointMake(self.currentPoint.x  ,self.currentPoint.y + 1)];
    
    self.southButton.hidden = [self tileExistAtPoint:CGPointMake(self.currentPoint.x ,self.currentPoint.y - 1)];
}

-(BOOL)tileExistAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 &&  point.x < [self.tiles count] && point.y <
        [[self.tiles objectAtIndex:point.x] count]){
        return NO;
        
    }
    else {
        return YES;
    }
}

-(void)updateCharacterStatsForAmor:(GGArmor *)armor withWeapons:(GGWeapon *)weapon withHealthEffect:(int)healthEffect
{

    if (armor !=nil){
        self.character.health =self.character.health - self.character.armor.health + armor.health;
    self.character.armor = armor;
}
    else if (weapon != nil){
        self.character.damage =self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon =weapon;
    }
    else if (healthEffect != 0){
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    
    }
}



@end