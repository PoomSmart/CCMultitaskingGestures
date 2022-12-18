#import "CCMultitaskingGestures.h"

@implementation CCMultitaskingGestures

- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"icon" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (UIColor *)selectedColor {
    return [UIColor blackColor];
}

- (BOOL)isSelected {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"SBUseSystemGestures"];
}

- (void)setSelected:(BOOL)selected {
    [[NSUserDefaults standardUserDefaults] setBool:selected forKey:@"SBUseSystemGestures"];
}

@end
