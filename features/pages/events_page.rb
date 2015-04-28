
class EventsPage < SitePrism::Page

  set_url '/events'

# -- event --
  elements :event_list, '.event-row td:nth-child(2)'

end