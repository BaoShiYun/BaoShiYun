//
//  BSYLiveOperateTopBar.m
//  BaoShiYun
//
//  Created by zddMac on 2021/2/24.
//

#import "BSYLiveOperateTopBar.h"

@interface BSYLiveOperateTopBar()

@property (nonatomic, strong)UIView *contentView;
@property (nonatomic, strong)UIButton *returnBtn;
@property (nonatomic, strong)UIImageView *bgView;
@property (nonatomic, strong)UILabel *titleLabel;

@end


@implementation BSYLiveOperateTopBar

- (instancetype)init {
    self = [super init];
    if(self) {
        [self createSubView];
    }
    return self;
}

- (void)createSubView {
    [self addSubview:self.bgView];
    [self addSubview:self.contentView];
    [self.contentView addSubview:self.returnBtn];
    [self.contentView addSubview:self.titleLabel];
}




#pragma mark ---
#pragma mark 懒加载

- (UIView *)contentView {
    if(!_contentView) {
        _contentView = [[UIView alloc] init];
    }
    return _contentView;
}

- (UIImageView *)bgView {
    if(!_bgView) {
        _bgView = [[UIImageView alloc] init];
        _bgView.userInteractionEnabled = YES;
        _bgView.contentMode = UIViewContentModeScaleToFill;
    }
    return _bgView;
}

- (UIButton *)returnBtn {
    if(!_returnBtn) {
        _returnBtn = [[UIButton alloc] init];
        [_returnBtn setImage:AssetsImage(@"navi_return_light") forState:UIControlStateNormal];
        [_returnBtn setImage:AssetsImage(@"navi_return_light") forState:UIControlStateHighlighted];
    }
    return _returnBtn;
}

- (UILabel *)titleLabel {
    if(!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor =  [UIColor whiteColor];
        _titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.numberOfLines = 1;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    return _titleLabel;
}

- (void)updateConstraints {
    [super updateConstraints];
    @weakify(self);
    [self.bgView mas_remakeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.edges.equalTo(self);
    }];
    [self.contentView mas_remakeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.left.width.equalTo(self);
        make.top.mas_equalTo(IPHONE_MARGIN_TOP);
        make.height.mas_equalTo(44);
    }];
    [self.returnBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.centerY.equalTo(self.contentView);
        make.height.width.mas_equalTo(40);
        make.left.mas_equalTo(5);
    }];
    [self.titleLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.left.mas_equalTo(45);
        make.centerY.height.equalTo(self.contentView);
        make.right.equalTo(self.contentView).with.offset(-5);
    }];
    
}

- (void)setLiveTitle:(NSString *)title {
    self.titleLabel.text = title;
}

- (void)returnBtnAction {
    if(self.delegate && [self.delegate respondsToSelector:@selector(topBarReturnButtonAction)]) {
        [self.delegate topBarReturnButtonAction];
    }
}





@end
