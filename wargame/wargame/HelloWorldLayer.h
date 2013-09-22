//
//  HelloWorldLayer.h
//  wargame
//
//  Created by jade on 13-9-4.
//  Copyright __MyCompanyName__ 2013年. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"


#import "SimpleAudioEngine.h"

typedef enum {
    kEndReasonWin,
    kEndReasonLose
} EndReason;
// HelloWorldLayer
@interface HelloWorldLayer : CCLayer <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
    CCSpriteBatchNode *_batchNode;
    CCSprite *_ship;
    
    CCParallaxNode *_backgroundNode;
    CCSprite *_spacedust1;
    CCSprite *_spacedust2;
    CCSprite *_planetsunrise;
    CCSprite *_galaxy;
    CCSprite *_spacialanomaly;
    CCSprite *_spacialanomaly2;
    float _shipPointsPerSecY;
    
    CCArray *_asteroids;
    int _nextAsteroid;
    double _nextAsteroidSpawn;
    
    CCArray *_shipLasers;
    int _nextShipLaser;
    
    int _lives;
    double _gameOverTime;
    bool _gameOver;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
