//
//  UIView+LZFrame.m
//  ChooseDate_Coding
//
//  Created by lz on 2017/12/15.
//  Copyright © 2017年 wanglz. All rights reserved.
//

#import "UIView+LZFrame.h"



@implementation UIView (LZFrame)

// 上 左
-(void)setLz_top:(CGFloat)lz_top{
    CGRect frame = self.frame;
    frame.origin.y = lz_top;
    self.frame = frame;
}
- (CGFloat)lz_top {
    return self.frame.origin.y;
}


- (void)setLz_left:(CGFloat)lz_left {
    CGRect frame = self.frame;
    frame.origin.x = lz_left;
    self.frame = frame;
}

- (CGFloat)lz_left {
    return self.frame.origin.x;
}

// 下 右
- (void)setLz_bottom:(CGFloat)lz_bottom {
    self.lz_y = lz_bottom - self.lz_height;
}

- (CGFloat)lz_bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setLz_right:(CGFloat)lz_right {
    self.lz_x = lz_right - self.lz_width;
}

- (CGFloat)lz_right {
    return CGRectGetMaxX(self.frame);
}


// x y
- (void)setLz_x:(CGFloat)lz_x {
    CGRect frame = self.frame;
    frame.origin.x = lz_x;
    self.frame = frame;
}

- (CGFloat)lz_x{
    return self.frame.origin.x;
}



- (void)setLz_y:(CGFloat)lz_y{
    CGRect frame = self.frame;
    frame.origin.y = lz_y;
    self.frame = frame;
}

- (CGFloat)lz_y{
    return self.frame.origin.y;
}


// centerX centerY
- (void)setLz_centerX:(CGFloat)lz_centerX{
    CGPoint center = self.center;
    center.x = lz_centerX;
    self.center = center;
}

- (CGFloat)lz_centerX{
    return self.center.x;
}


- (void)setLz_centerY:(CGFloat)lz_centerY{
    CGPoint center = self.center;
    center.y = lz_centerY;
    self.center = center;
}

- (CGFloat)lz_centerY{
    return self.center.y;
}


// 宽 高
- (void)setLz_width:(CGFloat)lz_width{
    CGRect frame = self.frame;
    frame.size.width = lz_width;
    self.frame = frame;
}

- (CGFloat)lz_width{
    return self.frame.size.width;
}

- (void)setLz_height:(CGFloat)lz_height{
    CGRect frame = self.frame;
    frame.size.height = lz_height;
    self.frame = frame;
}

- (CGFloat)lz_height{
    return self.frame.size.height;
}

// size Origin
- (void)setLz_size:(CGSize)lz_size{
    CGRect frame = self.frame;
    frame.size = lz_size;
    self.frame = frame;
}

- (CGSize)lz_size{
    return self.frame.size;
}


- (void)setLz_origin:(CGPoint)lz_origin{
    CGRect frame = self.frame;
    frame.origin = lz_origin;
    self.frame = frame;
}

- (CGPoint)lz_origin{
    return self.frame.origin;
}


// Query other frame locations
- (CGPoint)lz_bottomRight{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

- (CGPoint)lz_bottomLeft{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}
-(CGPoint)lz_topRight{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}


- (CGPoint)lz_topLeft{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y;
    return CGPointMake(x, y);
}




//init with something
- (instancetype)initWithLz_Origin:(CGPoint)origin{
    
    return [self initWithFrame:CGRectMake(origin.x, origin.y, 0.0, 0.0)];
}

- (instancetype)initWithLz_Size:(CGSize)size{
    
    return [self initWithFrame:CGRectMake(0.0, 0.0, size.width, size.height)];
}

- (instancetype)initWithLz_Size:(CGSize)size moveToCenter:(UIViewMoveToWhere)parameter superView:(UIView *)superView{
    
    if(self = [self initWithFrame:CGRectMake(0.0, 0.0, size.width, size.height)])
    {
        [self lz_moveToWhere:parameter superView:superView];
    }
    
    return self;
}

- (instancetype)initWithLz_Frame:(CGRect)frame moveToCenter:(UIViewMoveToWhere)parameter superView:(UIView *)superView{
    
    if(self = [self initWithFrame:frame])
    {
        [self lz_moveToWhere:parameter superView:superView];
    }
    
    return self;
}

-(double)lz_scaleVertical{
    CGFloat height = kScreenHeight == 667.0 ? 667.0 : 568.0;
    
    return kScreenHeight / height;
}

-(double)lz_scaleHorizontal{
    return kScreenWidth / 375.0;
    
}


- (void)lz_scaleWidth:(CGFloat)width{
    
    self.lz_width = width * [self lz_scaleHorizontal];
}
- (void)lz_scaleHeight:(CGFloat)height{
    
    self.lz_height = height * [self lz_scaleVertical];
}

- (void)lz_scaleWidth:(CGFloat)width addValue:(CGFloat)value{
    
    self.lz_width = width + value * [self lz_scaleHorizontal];
}
- (void)lz_scaleHeight:(CGFloat)height addValue:(CGFloat)value{
    
    self.lz_height = height + value * [self lz_scaleVertical];
}
- (void)lz_scaleTop:(CGFloat)top addValue:(CGFloat)value{
    
    self.lz_top = top + value * [self lz_scaleVertical];
}
- (void)lz_scaleBottom:(CGFloat)bottom addValue:(CGFloat)value{
    
    self.lz_bottom = bottom + value * [self lz_scaleVertical];
}
- (void)lz_scaleLeft:(CGFloat)left addValue:(CGFloat)value{
    
    self.lz_left = left + value * [self lz_scaleHorizontal];
}
- (void)lz_scaleRight:(CGFloat)right addValue:(CGFloat)value{
    
    self.lz_right = right + value * [self lz_scaleHorizontal];
}


// Move via offset
- (void)lz_moveBy: (CGPoint) delta
{
    CGPoint newcenter = self.center;
    newcenter.x += delta.x;
    newcenter.y += delta.y;
    self.center = newcenter;
}

// Scaling
- (void)lz_scaleBy: (CGFloat) scaleFactor
{
    CGRect newframe = self.frame;
    newframe.size.width *= scaleFactor;
    newframe.size.height *= scaleFactor;
    self.frame = newframe;
}

// Ensure that both dimensions fit within the given size by scaling down
- (void)lz_fitInSize: (CGSize)aSize
{
    CGFloat scale;
    CGRect newframe = self.frame;
    
    if (newframe.size.height && (newframe.size.height > aSize.height))
    {
        scale = aSize.height / newframe.size.height;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    if (newframe.size.width && (newframe.size.width >= aSize.width))
    {
        scale = aSize.width / newframe.size.width;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    self.frame = newframe;
}

//-------------------move to somewhere------------------------------

- (void)lz_moveToCenter{
    
    if(!self.superview)
        return;
    
    CGPoint center = CGPointMake(self.superview.lz_width / 2.0, self.superview.lz_height / 2.0);
    self.center    = center;
}

- (void)lz_moveToCenterX{
    
    if(!self.superview)
        return;
    
    CGPoint center = CGPointMake(self.superview.lz_width / 2.0, self.center.y);
    self.center    = center;
}

- (void)lz_moveToCenterY{
    
    if(!self.superview)
        return;
    
    CGPoint center = CGPointMake(self.center.x, self.superview.lz_height / 2.0);
    self.center    = center;
}

- (void)lz_moveToTopCenter{
    
    if(!self.superview)
        return;
    
    self.lz_top = 0.0;
    self.lz_centerX  = self.superview.lz_width / 2.0;
}

- (void)lz_moveToBottomCenter{
    
    if(!self.superview)
        return;
    
    self.lz_bottom = self.superview.lz_height;
    self.lz_centerX      = self.superview.lz_width / 2.0;
}

- (void)lz_moveToLeftCenter{
    
    if(!self.superview)
        return;
    
    self.lz_left = 0.0;
    self.lz_centerY    = self.superview.lz_height / 2.0;
}

- (void)lz_moveToRightCenter{
    
    if(!self.superview)
        return;
    
    self.lz_right = self.superview.lz_width;
    self.lz_centerY     = self.superview.lz_height / 2.0;
}

- (void)lz_moveToTopRight{
    
    if(!self.superview)
        return;
    
    self.lz_right = self.superview.lz_width;
    self.lz_top   = 0.0;
}

- (void)lz_moveToTopLeft{
    
    if(!self.superview)
        return;
    
    self.lz_left = 0.0;
    self.lz_top  = 0.0;
}

- (void)lz_moveToBottomLeft{
    
    if(!self.superview)
        return;
    
    self.lz_left   = 0.0;
    self.lz_bottom = self.superview.lz_height;
}

- (void)lz_moveToBottomRight{
    
    if(!self.superview)
        return;
    
    self.lz_right  = self.superview.lz_width;
    self.lz_bottom = self.superview.lz_height;
}

- (void)lz_moveToCenterXOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToCenterX];
    }
    else
    {
        self.center = CGPointMake(superView.lz_width / 2.0, self.lz_centerY);
    }
}
- (void)lz_moveToCenterYOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToCenterY];
    }
    else
    {
        self.center = CGPointMake(self.lz_centerX, superView.lz_height / 2.0);
    }
}
- (void)lz_moveToCenterOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToCenter];
    }
    else
    {
        self.center = CGPointMake(superView.lz_width / 2.0, superView.lz_height / 2.0);
    }
}

- (void)lz_moveToTopCenterOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToTopCenter];
    }
    else
    {
        self.lz_top = 0.0;
        self.lz_centerX   = superView.lz_width / 2.0;
    }
}
- (void)lz_moveToBottomCenterOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToBottomCenter];
    }
    else
    {
        self.lz_bottom = superView.lz_height;
        self.lz_centerX      = superView.lz_width / 2.0;
    }
}
- (void)lz_moveToLeftCenterOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToLeftCenter];
    }
    else
    {
        self.lz_left = 0.0;
        self.lz_centerY    = superView.lz_height / 2.0;
    }
}
- (void)lz_moveToRightCenterOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToRightCenter];
    }
    else
    {
        self.lz_right = superView.lz_width;
        self.lz_centerY     = superView.lz_height / 2.0;
    }
}

- (void)lz_moveToTopRightOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToTopRight];
    }
    else
    {
        self.lz_right = superView.lz_width;
        self.lz_top   = 0.0;
    }
}

- (void)lz_moveToBottomRightOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToBottomRight];
    }
    else
    {
        self.lz_right  = superView.lz_width;
        self.lz_bottom = superView.lz_height;
    }
}
- (void)lz_moveToBottomLeftOnView:(UIView *)superView{
    
    if(!superView)
    {
        [self lz_moveToBottomLeft];
    }
    else
    {
        self.lz_left   = 0.0;
        self.lz_bottom = superView.lz_height;
    }
}

//-------------------------------layer corner radius------------------------------------
- (void)lz_setLayerCorner:(CGFloat)radius{
    
    self.layer.cornerRadius  = radius;
    self.layer.masksToBounds = YES;
}

- (void)lz_setLayerRounded:(BOOL)setLayerRound{
    
    if(setLayerRound)
    {
        self.layer.cornerRadius  = self.lz_width / 2.0;
        self.layer.masksToBounds = YES;
    }
    else
    {
        self.layer.cornerRadius  = 0.0;
        self.layer.masksToBounds = YES;
    }
}


- (void)lz_moveToWhere:(UIViewMoveToWhere)parameter superView:(UIView*)superView{
    
    switch (parameter) {
        case UIViewMoveToCenterX:
        {
            [self lz_moveToCenterXOnView:superView];
            break;
        }
        case UIViewMoveToCenterY:
        {
            [self lz_moveToCenterYOnView:superView];
            break;
        }
        case UIViewMoveToCenter:
        {
            [self lz_moveToCenterOnView:superView];
            break;
        }
        default:
            break;
    }
}


@end
