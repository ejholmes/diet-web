#= require lodash
#= require backbone

class @Diet.Views.Feeds extends @Diet.CollectionView
  childClass: window.Diet.Views.Feed
