# Create the router containing the 'root' state plus four sub-states
# handling 1) the default index state and 2) the showing of the three
# tabs and their associated views in the 'application' outlet:

App.Router = Em.Router.extend
  enableLogging: true
  location: 'hash'

  root: Em.Route.extend

    # These three actions are defined to allow us to call them from
    # the index.html "tab" template like so: {{action goToTab1}}

    goToTab1: Ember.Route.transitionTo('tab1')
    goToTab2: Ember.Route.transitionTo('tab2')
    goToTab3: Ember.Route.transitionTo('tab3')

    index: Em.Route.extend
      route: '/'
      redirectsTo: 'tab1'

    tab1: Em.Route.extend
      route: '/tab1'

      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet
          name: 'tab1'

      enter: ->

        # On the initial load, Ember will not have rendered the App.TabView yet (with
        # the classNames ['tabs'], therefore div.tabs in the HTML), so we need to wait
        # till the next run loop at which point the div.tabs will have been inserted
        # into the DOM - and be available to us:

        Em.run.next ->
          $('div.tabs').addClass 'tab1'
          $('div.slider div.foreground').stop().animate {'width': '90px'}, 1000
          $('div.slider div.handle').stop().animate {'left': '82px'}, 1000

      exit: ->
        $('div.tabs').removeClass 'tab1'

    tab2: Em.Route.extend
      route: '/tab2'

      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet
          name: 'tab2'

      enter: ->
        Em.run.next ->
          $('div.tabs').addClass 'tab2'
          $('div.slider div.foreground').stop().animate {'width': '180px'}, 1000
          $('div.slider div.handle').stop().animate {'left': '172px'}, 1000

      exit: ->
        $('div.tabs').removeClass 'tab2'

    tab3: Em.Route.extend
      route: '/tab3'

      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet
          name: 'tab3'

      enter: ->
        Em.run.next ->
          $('div.tabs').addClass 'tab3'
          $('div.slider div.foreground').stop().animate {'width': '271px'}, 1000
          $('div.slider div.handle').stop().animate {'left': '263px'}, 1000

      exit: ->
        $('div.tabs').removeClass 'tab3'