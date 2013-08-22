CompositeXib
============

Composite .xib Loading for UI's created in Interface Builder. Use Autolayout and load programmatically.

### Load Custom UIView from Xcode's Interface Builder
 1. Create a new UIView subclass (WidgetView.h/.m)
 2. Create a new View .xib file (WidgetView.xib)
 3. Set Files Owner for .xib to WidgetView
 4. Add an IBOutlet UIView *view property to the WidgetView.h
 5. Connect the outlet between the File's Owner and the View
 6. Create a UIView on your ViewController.xib where you want to load the view.
 7. Set the class to your custom UIView subclass (WidgetView)
 8. Add code to load the .xib file inside the custom UIView (WidgetView.m)

			- (id)initWithCoder:(NSCoder *)aDecoder {
				self = [super initWithCoder:aDecoder];
				if(self) {
					[self setup];      
				}
				return self;
			}
		
			- (void)setup {
				[[NSBundle mainBundle] loadNibNamed:@"WidgetView" owner:self options:nil];
				[self addSubview:self.view];
			}

### Load Custom UIView Programatically (autolayout)
 1. Create and add view to the ViewController view
 2. Setup autolayout constraints
 3. Update your UIView subclasses initWithFrame method to load the .xib file.

			- (id)initWithFrame:(CGRect)frame {
				self = [super initWithFrame:frame];
				if (self) {
					[self setup];
				}
				return self;
			}
			- (void)setup {
				[[NSBundle mainBundle] loadNibNamed:@"WidgetView" owner:self options:nil];
				[self addSubview:self.view];
		
				// The new self.view needs autolayout constraints for sizing
				self.view.translatesAutoresizingMaskIntoConstraints = NO;
					// Width
				[self addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:200]];
					// Height
				[self addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:100]];
			}

4. Update your ViewController.m to create the view and it's autolayout constraints

  
![Custom UIView .xib](https://raw.github.com/PaulSolt/CompositeXib/master/Custom%20UIView.png)
![Load Multiple UIView's created from .xib files](https://raw.github.com/PaulSolt/CompositeXib/master/Load%20UIView.png)
