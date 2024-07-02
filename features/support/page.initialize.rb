Dir[File.join(File.dirname(__FILE__),'~\..\Projeto automação\features\pages*.page.rb')].each { |file| require file }

module Page

  def login
    @login ||= LoginPage.new
  end

  def home
    @home ||= HomePage.new
  end

  # def recover
  #   @recover ||= recoverPage.new
  # end
  
end