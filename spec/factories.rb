FactoryGirl.define do
  factory :user do
    email '23443mytest@example.com'
    password 'mypassword'
    username 'mynewcoreuser'
    fname 'Roberto'
    lname 'Clemente'
    company 'Pirates'
    officephone '7024848984'
    mobilephone '7026849327'
    confirmed_at = Time.now
  end
end
