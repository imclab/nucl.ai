defaultOptions = {
  scaleColor: false,
  trackColor: 'rgba(255,255,255,0.3)',
  barColor: '#E7F7F5',
  lineWidth: 6,
  lineCap: 'butt',
  size: 95
}

$ ->

  getScale = (clock) ->
    if clock.hasClass("days") then return 31
    if clock.hasClass("hours") then return 24
    return 60

  update = (clocks) ->
    for clock in clocks
      percents = clock.find(".value").html() * 100 / getScale(clock)
      clock.data('easyPieChart').update(percents);
      setTimeout ->


  $("timer-dashboard").each ->
    timer = $(@)
    clocks = []
    timer.find("clock").each ->
      clocks.push $(@).easyPieChart defaultOptions

    timer.countdown timer.attr("count-to"), (event) ->
      timer.find(".days").find(".value").html event.strftime('%D')
      timer.find(".hours").find(".value").html event.strftime('%H')
      timer.find(".minutes").find(".value").html event.strftime('%M')
      timer.find(".seconds").find(".value").html event.strftime('%S')
      update(clocks)
