require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select 'h1', 'Welcome to Guildford Parking'
    assert_select 'p',"Reserve a spot for your precious cars (or cars if you're a god damn baller) in one of our premium car parks"
    assert_select 'h2', "Create an account or sign in to reserve a parking space"
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'If you want to keep in touch with us talk to us here (you DO NOT need an account to make a form)'
  end

  test 'should post submitted contact all fields filled' do
    post submitted_contact_url, params:
    {name:"Tarek",email: "te00141@surrey.ac.uk",message:"Hello"}


    assert_response :redirect
    assert_not_empty flash[:success]

  end

  test 'all fields not filled contact page' do
    post submitted_contact_url, params:
    {name:"Tarek", message:"Hello"}

    assert_response :redirect
    assert_not_empty flash[:danger]

  end


end
