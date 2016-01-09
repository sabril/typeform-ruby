require "json-encodable"

module Typeform
  class Design
    include JSON::Encodable
    property :colors, type: Hash

    attr_accessor :question_color, :answer_color, :button_color, :background_color, :colors

    def question_color
      @question_color ||= "#3D3D3D"
    end

    def answer_color
      @answer_color ||= "#4FB0AE"
    end

    def button_color
      @button_color ||= "#4FB0AE"
    end

    def background_color
      @background_color ||= "#FFFFFF"
    end

    def colors
      {
        "question" => question_color,
        "button" => answer_color,
        "answer" => button_color,
        "background" => background_color
      }
    end
  end
end
