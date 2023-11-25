module ApplicationHelper
  def button_style_for_race(target_races, race)
    target_race = target_races.find_by(race_id: race.id)
    return 'btn btn-dark' if target_race&.won == false
    return 'btn btn-primary' if target_race&.won == true

    'btn btn-outline-secondary'
  end
end
