//
//  BSYLiveSelfSeatAudioDisableModel.h
//  BSYLiveDataLayer
//
//  Created by zddMac on 2021/3/5.
//  Copyright © 2021 zddMac. All rights reserved.
//

#import <BSYSDK/BSYSDK.h>

NS_ASSUME_NONNULL_BEGIN

@interface BSYLiveSelfSeatAudioDisableModel : BSYMediaModel
@property (nonatomic, strong)NSString *seatId;  //席位id
@property (nonatomic, assign)BOOL audioDisable; //Yes-麦克风禁用 NO-麦克风允许

@end

NS_ASSUME_NONNULL_END