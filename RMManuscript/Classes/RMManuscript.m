//
//  RMManuscript.m
//  RmManuscript
//
//  Created by ShiChangShun on 2022/3/24.
//

#import "RMManuscript.h"
#import <RMBaseSDK/RMBaseManager.h>

@implementation RMManuscript


+ (void)destroyEngine {
    [RMBaseManager destroyEngine];
}

+ (void)initWithToken:(NSString *)token {
    [RMBaseManager registerManuscriptWithToken:token];
}

+ (void)registerSharePlatforms:(NSArray *)platforms withListenShareInfoBlock:(nonnull void (^)(NSDictionary * _Nonnull))shareBlock {
    [RMBaseManager registerSharePlatforms:platforms withListenShareInfoBlock:shareBlock];
}

+ (void)draftListPage:(BOOL)isAnimate isPush:(BOOL)isPush{
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.draftListPage" isAnimate:isAnimate isPush:isPush];
}

+ (void)finishedListPage:(BOOL)isAnimate isPush:(BOOL)isPush{
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.finishedListPage" isAnimate:isAnimate isPush:isPush];
}

+ (void)createManuscriptRichText:(BOOL)isAnimate {
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.createManuscriptRichText" isAnimate:isAnimate isPush:NO];
}

+ (void)createManuscriptImages:(BOOL)isAnimate {
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.createManuscriptImages" isAnimate:isAnimate isPush:NO];
}

+ (void)createManuscriptVideo:(BOOL)isAnimate {
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.createManuscriptVideo" isAnimate:isAnimate isPush:NO];
}

+ (void)createManuscriptWeibo:(BOOL)isAnimate{
    [RMBaseManager openFlutterViewWithRoute:@"RmManuscript.createManuscriptWeibo" isAnimate:isAnimate isPush: NO];
}

@end
