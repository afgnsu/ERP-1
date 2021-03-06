module ProfilesHelper
  def name_of_profile(profile)
    case profile.key
      when 'month_check_date'
        '月盘点日'
      when'data_precision'
        '小数位'
      else
        ''
    end
  end
  
  def is_month_check_day?()
    profile = Profile.where("key = 'month_check_date'").first
    if profile != nil
      day = profile.value.to_i
      Time.now.day == day
    else
      false
    end
  end

  def get_data_precision()
    profile = Profile.where("key = 'data_precision'").first
    if profile != nil
      profile.value.to_i
    else
      0
    end
  end
end
