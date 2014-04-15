//
//  TWRBorderedView.m
//  TWRBorderedView
//
//  Created by Michelangelo Chasseur on 15/04/14.
//  Copyright (c) 2014 Touchware. All rights reserved.
//

#import "TWRBorderedView.h"

@implementation TWRBorderedView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib {
    if (_topBorder) {
        _mask += TWRBorderMaskTop;
    }
    
    if (_bottomBorder) {
        _mask += TWRBorderMaskBottom;
    }
    
    if (_leftBorder) {
        _mask += TWRBorderMaskLeft;
    }
    
    if (_rightomBorder) {
        _mask += TWRBorderMaskRight;
    }
}

- (id)initWithFrame:(CGRect)frame
        borderWidth:(CGFloat)width
              color:(UIColor *)color
            andMask:(TWRBorderMask)mask {
    self = [self initWithFrame:frame];
    if (self) {
        _mask = mask;
        _borderWidth = width;
        _borderColor = color;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Default border width
    if (_borderWidth == 0) {
        _borderWidth = 1.0f;
    }
    
    // Default color
    if (!_borderColor) {
        _borderColor = [UIColor blackColor];
    }
    
    // Top border
    if (_mask & TWRBorderMaskTop) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect));
        CGContextSetStrokeColorWithColor(context, [_borderColor CGColor] );
        CGContextSetLineWidth(context, _borderWidth);
        CGContextStrokePath(context);
    }
    
    // Bottom border
    if (_mask & TWRBorderMaskBottom) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
        CGContextSetStrokeColorWithColor(context, [_borderColor CGColor] );
        CGContextSetLineWidth(context, _borderWidth);
        CGContextStrokePath(context);
    }
    
    // Left border
    if (_mask & TWRBorderMaskLeft) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextSetStrokeColorWithColor(context, [_borderColor CGColor] );
        CGContextSetLineWidth(context, _borderWidth);
        CGContextStrokePath(context);
    }
    
    // Right border
    if (_mask & TWRBorderMaskRight) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextMoveToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect));
        CGContextSetStrokeColorWithColor(context, [_borderColor CGColor] );
        CGContextSetLineWidth(context, _borderWidth);
        CGContextStrokePath(context);
    }
}

@end
