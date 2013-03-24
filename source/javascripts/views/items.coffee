#= require lodash
#= require backbone

class @Diet.Views.Items extends @Diet.CollectionView
  childClass: window.Diet.Views.Item
