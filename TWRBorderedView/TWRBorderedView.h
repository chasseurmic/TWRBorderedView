//
//  TWRBorderedView.h
//  TWRBorderedView
//
//  Created by Michelangelo Chasseur on 15/04/14.
//  Copyright (c) 2014 Touchware. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, TWRBorderMask) {
    TWRBorderMaskTop      = 1 << 0,
    TWRBorderMaskBottom   = 1 << 1,
    TWRBorderMaskLeft     = 1 << 2,
    TWRBorderMaskRight    = 1 << 3
};

@interface TWRBorderedView : UIView

@property (nonatomic, assign) TWRBorderMask mask;
@property (nonatomic, assign) CGFloat borderWidth;

@property (strong, nonatomic) UIColor *borderColor;

// Use when assigning values from a XIB file
@property (nonatomic, assign) BOOL topBorder;
@property (nonatomic, assign) BOOL bottomBorder;
@property (nonatomic, assign) BOOL leftBorder;
@property (nonatomic, assign) BOOL rightomBorder;

- (id)initWithFrame:(CGRect)frame borderWidth:(CGFloat)width color:(UIColor *)color andMask:(TWRBorderMask)mask;

@end
