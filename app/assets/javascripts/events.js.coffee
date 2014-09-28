$ ->
  if location.hash != ''
    $('a[href="'+location.hash.replace("tab_","")+'"]').tab('show')

  $('a[data-toggle="tab"]').on 'shown.bs.tab', (e) ->
    location.hash = "tab_" + $(e.target).attr('href').substr(1)