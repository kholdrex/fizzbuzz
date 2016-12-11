module ApplicationHelper
  def fizz_buzz_color(v)
    colors = {
        'Fizz' => 'red lighten-1',
        'Buzz' => 'purple lighten-3',
        'FizzBuzz' => 'teal lighten-4'
    }

    return v unless current_color = colors[v]

    content_tag(:div, class: "chip #{current_color}") do
      v
    end
  end
end
