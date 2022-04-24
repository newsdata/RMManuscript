//
//  RMManuscript.h
//  RmManuscript
//
//  Created by ShiChangShun on 2022/3/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RMManuscript : NSObject

/// 初始化作品管理SDK
/// @param token xxx
+ (void)initWithToken:(NSString *)token;

/// 注册支持的分享平台和回调
/// @param platforms  支持平台的数组可以为空 @[@"qq",@"dingding",@"wechat"]
/// @param shareBlock sdk回调分享信息：
/// 分享标题    NSString*  title;
/// 分享URL NSString*     url;
/// 分享内容  NSString *   content;
/// 分享平台  NSString *   qq   wechat    dingding
+ (void)registerSharePlatforms:(NSArray *)platforms withListenShareInfoBlock:(void(^)(NSDictionary* shareInfo))shareBlock;

/// 释放SDK
+ (void)destroyEngine;

/// 我的稿件页面
/// @param isAnimate 动画
+ (void)draftListPage:(BOOL)isAnimate isPush:(BOOL)isPush;

///  成品稿件页面
/// @param isAnimate 动画
+ (void)finishedListPage:(BOOL)isAnimate isPush:(BOOL)isPush;

/// 创建图文稿页面
/// @param isAnimate 动画
+ (void)createManuscriptRichText:(BOOL)isAnimate;

/// 创建视频稿页面
/// @param isAnimate  --
+ (void)createManuscriptVideo:(BOOL)isAnimate;

/// 创建短微博稿页面
+ (void)createManuscriptWeibo:(BOOL)isAnimate;

/// 创建图片稿页面
+ (void)createManuscriptImages:(BOOL)isAnimate;

@end

NS_ASSUME_NONNULL_END
