class Phone
  def advertise(a_call)
    if @quiet
      vibrate(a_call)
    else
      ringtone(a_call)
    end
  end
end
