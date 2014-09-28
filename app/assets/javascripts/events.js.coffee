$ ->
  if location.hash != ''
    #if there is subtab, show first the tab, then the subtab
    tab = location.hash.replace(/_subtab.*/, "").replace("tab_","")
    subtab = location.hash.replace("tab_","")
    if tab
      $('a[href="'+tab+'"]').tab('show')
    if subtab
      $('a[href="'+subtab+'"]').tab('show')

  $('a[data-toggle="tab"]').on 'shown.bs.tab', (e) ->
    location.hash = "tab_" + $(e.target).attr('href').substr(1)
