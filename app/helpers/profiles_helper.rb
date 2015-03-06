module ProfilesHelper
  def name_of_profile(profile)
    case profile.key
      when 'month_check_date'
        '月盘点日'
      else
        ''
    end
  end
  
  def is_month_check_day?()
    day = Profile.where("key = 'month_check_date'").first.value.to_i
    Time.now.day == day
  end
end
