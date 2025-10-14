class LogLineParser
  LOG_REGEX = /\[(.*)\]: (.*)/

  # attr_reader :log_level, :message

  def initialize(line)
    unless match = line.match(LOG_REGEX)
      raise ArgumentError("Bad format!")
    end

    @log_level = match[1]
    @message = match[2].strip
  end

  def message
    @message
  end

  def log_level
    @log_level.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
