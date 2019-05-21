class StaffMemberFormPresenter < FormPresenter
  def password_field_block(name, label_text, options = {})
    if object.new_record?
      super(name, label_text, options)
    else
      markup(:div, class: 'input-block') do |m|
        m << decorated_label(name, label_text, options.merge(required: false))
        m << password_field(name, options.merge(disabled: true))
        m.button('変更する', type: 'button', id: 'enable-password_field')
        m.button('変更しない', type: 'button', id: 'disable-password_field',
          style: 'display: none')
        m << error_messages_for(name)
      end
    end
  end

  def check_boxes
    markup(:div, class: 'input-block') do |m|
      m << check_box(:suspended)
      m << label(:susupended, 'アカウント停止')
    end
  end
end
