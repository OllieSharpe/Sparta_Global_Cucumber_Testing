require_relative 'pages/auto_homepage'
require_relative 'pages/auto_sign_in'
require_relative 'pages/auto_account_page'
require_relative 'pages/women_page'
require_relative 'pages/tshirts_page'
require_relative 'pages/dresses_page'
require_relative 'pages/order_page'

module AutoSite

  def auto_homepage
    AutoHomepage.new
  end

  def auto_sign_in
    AutoSignInPage.new
  end

  def auto_account_page
    AutoAccountPage.new
  end

  def dresses_page
    DressesPage.new
  end

  def tshirts_pages
    TshirtsPage.new
  end

  def women_page
    WomenPage.new
  end

  def order_page
    OrderPage.new
  end

end
