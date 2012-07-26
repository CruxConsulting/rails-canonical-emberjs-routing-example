$ ->

	# Create the application controller alongside the application view that's
	# found in the index.html file:

	App.ApplicationView = Em.View.extend
		templateName: 'application'

	# Create the logo view for showing the Ember logo in the example:

	App.LogoView = Em.View.extend
		templateName: 'logo'
		classNames: ['logo']

	# Create the tab view for showing the three tabs in the example:

	App.TabView = Em.View.extend
		templateName: 'tab'
		classNames: ['tabs']

	# Create the slider view for showing the slider below the tabs:

	App.SliderView = Em.View.extend
		templateName: 'slider'
		classNames: ['slider']

	# Create the tab1 controller (the "Canonical" tab) alongside the view:

	App.Tab1View = Em.View.extend
		templateName: 'tab1'
		classNames: ['content']

	# Create the tab2 controller (the "routing" tab) alongside the view:

	App.Tab2View = Em.View.extend
		templateName: 'tab2'
		classNames: ['content']

	# Create the tab3 controller (the "example" tab) alongside the view:

	App.Tab3View = Em.View.extend
		templateName: 'tab3'
		classNames: ['content']

	# Finally, initialize our glorious Ember application:
	App.initialize()