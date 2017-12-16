//
//  UIView+LZFrame.h
//  ChooseDate_Coding
//
//  Created by lz on 2017/12/15.
//  Copyright © 2017年 wanglz. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kScreenWidth   [UIScreen mainScreen].bounds.size.width
#define kScreenHeight  [UIScreen mainScreen].bounds.size.height

typedef enum moveToWhere{
    
    UIViewMoveToCenterX = INT_MAX / 2,
    UIViewMoveToCenterY = INT_MAX / 2 + 1,
    UIViewMoveToCenter  = INT_MAX / 2 + 3
    
}UIViewMoveToWhere;



@interface UIView (LZFrame)


@property (nonatomic, assign) CGSize  lz_size;
@property (nonatomic, assign) CGPoint lz_origin;

@property (nonatomic, assign) CGFloat lz_top;
@property (nonatomic, assign) CGFloat lz_left;

@property (nonatomic, assign) CGFloat lz_bottom;
@property (nonatomic, assign) CGFloat lz_right;

@property (nonatomic, assign) CGFloat lz_x;
@property (nonatomic, assign) CGFloat lz_y;

@property (nonatomic, assign) CGFloat lz_centerX;
@property (nonatomic, assign) CGFloat lz_centerY;

@property (nonatomic, assign) CGFloat lz_width;
@property (nonatomic, assign) CGFloat lz_height;

@property (nonatomic, assign, readonly) CGPoint lz_bottomLeft;
@property (nonatomic, assign, readonly) CGPoint lz_bottomRight;
@property (nonatomic, assign, readonly) CGPoint lz_topRight;
@property (nonatomic, assign, readonly) CGPoint lz_topLeft;



- (double)lz_scaleHorizontal;
- (double)lz_scaleVertical;

- (void)lz_scaleWidth:(CGFloat)width;
- (void)lz_scaleHeight:(CGFloat)height;
- (void)lz_scaleWidth:(CGFloat)width addValue:(CGFloat)value;
- (void)lz_scaleHeight:(CGFloat)height addValue:(CGFloat)value;
- (void)lz_scaleTop:(CGFloat)top addValue:(CGFloat)value;
- (void)lz_scaleBottom:(CGFloat)bottom addValue:(CGFloat)value;
- (void)lz_scaleLeft:(CGFloat)left addValue:(CGFloat)value;
- (void)lz_scaleRight:(CGFloat)right addValue:(CGFloat)value;


- (void)lz_moveBy: (CGPoint) delta;
- (void)lz_scaleBy: (CGFloat) scaleFactor;
- (void)lz_fitInSize: (CGSize) aSize;

//------------------------------- init with value --------------------------------
- (instancetype)initWithLz_Origin:(CGPoint)origin;
- (instancetype)initWithLz_Size:(CGSize)size;
- (instancetype)initWithLz_Size:(CGSize)size moveToCenter:(UIViewMoveToWhere)parameter superView:(UIView *)superView;
- (instancetype)initWithLz_Frame:(CGRect)frame moveToCenter:(UIViewMoveToWhere)parameter superView:(UIView *)superView;

//----------------------------------move to center--------------------------------
- (void)lz_moveToCenterX;
- (void)lz_moveToCenterY;
- (void)lz_moveToCenter;

- (void)lz_moveToTopCenter;
- (void)lz_moveToBottomCenter;
- (void)lz_moveToLeftCenter;
- (void)lz_moveToRightCenter;

- (void)lz_moveToTopRight;
- (void)lz_moveToTopLeft;
- (void)lz_moveToBottomRight;
- (void)lz_moveToBottomLeft;

- (void)lz_moveToCenterXOnView:(UIView *)superView;
- (void)lz_moveToCenterYOnView:(UIView *)superView;
- (void)lz_moveToCenterOnView:(UIView *)superView;

- (void)lz_moveToTopCenterOnView:(UIView *)superView;
- (void)lz_moveToBottomCenterOnView:(UIView *)superView;
- (void)lz_moveToLeftCenterOnView:(UIView *)superView;
- (void)lz_moveToRightCenterOnView:(UIView *)superView;

- (void)lz_moveToTopRightOnView:(UIView *)superView;
- (void)lz_moveToBottomRightOnView:(UIView *)superView;
- (void)lz_moveToBottomLeftOnView:(UIView *)superView;

//----------------------------------layer corner radius------------------------------------
- (void)lz_setLayerCorner:(CGFloat)radius;
- (void)lz_setLayerRounded:(BOOL)setLayerRound;

@end
