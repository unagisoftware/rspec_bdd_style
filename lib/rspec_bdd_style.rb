# frozen_string_literal: true

module RspecBddStyle
  PREFIXES = %w[given_i when_i and_i then_i].freeze

  PREFIXES.each do |prefix|
    define_method("#{prefix}_method_missing") do |method_name, *args, &block|
      action, action_name = parse_method_name(method_name)

      if action && respond_to?(action_name, true)
        if args.first.is_a?(Hash)
          send(action_name, **args.first, &block)
        else
          send(action_name, *args, &block)
        end
      else
        super
      end
    end
  end

  private

  def method_missing(method_name, *args, &block)
    PREFIXES.each do |prefix|
      return send("#{prefix}_method_missing", method_name, *args, &block) if method_name.to_s.start_with?("#{prefix}_")
    end

    super
  end

  def respond_to_missing?(*)
    true
  end

  def parse_method_name(method_name)
    match = method_name.to_s.match(/\A(#{PREFIXES.join('|')})_(.+)\z/)
    match ? [match[1], match[2].to_sym] : [nil, nil]
  end
end

RSpec.configure do |config|
  config.include RspecBddStyle, type: :feature
  config.include RspecBddStyle, type: :system
end
