//
//  BSYLiveResolutionModel.h
//  BSYLiveSDK
//
//  Created by zddMac on 2020/11/19.
//  Copyright © 2020 zddMac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BSYLiveResolutionModel : NSObject

@property (nonatomic, strong, readonly)NSString *resolution; ///清晰度 org-原始 lsd-超清  lhd-高清  lud-清晰
@property (nonatomic, strong, readonly)NSString *resolutionName; /// 对应的清晰度的描述： 原始、超清、高清、清晰

@end

NS_ASSUME_NONNULL_END
