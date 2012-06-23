class Phone
  def advertise
    strategy.recieve
  end
end
class Quiet
  def recieve
    "vibrate"
  end
end
class Noisy
  def recieve
    "ringtone"
  end
end
