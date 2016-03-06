module SessionHelpers

  def sign_up_and_in(email, password, user_name)
    visit('/')
    click_link('I Need InstaGratification')
    fill_in('User name', with: user_name)
    fill_in('Email', with: email)
    fill_in('Password', with: password)
    fill_in('Password confirmation', with: password)
    attach_file('user_profile_pic', 'spec/support/profile_pic_placeholder.jpg')
    click_button('I Need InstaGratification')
  end

  def new_upload(image_path, caption, tags)
    click_link "InstaGratify"
    attach_file('image', image_path)
    fill_in('Caption', with: caption)
    fill_in('Tags', with: tags)
    click_button('Make me famous')
  end

  def sign_out
    click_link 'I\'ve Had Enough InstaGratification'
  end

end
