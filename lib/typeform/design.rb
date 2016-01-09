require "json-encodable"

module Typeform
  class Design
    include JSON::Encodable

    property :colors, type: Hash

    attr_accessor :colors

    def question
      @question_color ||= "#3D3D3D"
    end

    def answer
      @answer_color ||= "#4FB0AE"
    end

    def button
      @button_color ||= "#4FB0AE"
    end

    def background
      @background_color ||= "#FFFFFF"
    end

    def colors
      {
        "question" => question,
        "button" => answer,
        "answer" => button,
        "background" => background
      }
    end
  end
end
