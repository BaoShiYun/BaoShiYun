//
//  BSYVideoListCell.h
//  BaoShiYun
//
//  Created by zddMac on 2021/4/25.
//  Copyright © 2021 duanguangming@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#define BSYVideoMediaId    @"MediaId"
#define BSYVideoName       @"Name"
#define BSYVideoDuration   @"Duration"
#define BSYVideoCoverImg   @"CoverImg"


typedef void(^BSYVideoDownloadAction)(NSString *mediaId);

@interface BSYVideoListCell : UITableViewCell

@property (nonatomic, strong) BSYDownloadModel *downloadModel;
@property (nonatomic, copy) BSYVideoDownloadAction downloadAction;

+(CGFloat)cellHeight;
- (void)setVideoInfo:(NSDictionary *)info;

@end

NS_ASSUME_NONNULL_END
