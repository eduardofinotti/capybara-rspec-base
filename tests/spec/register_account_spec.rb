require 'spec_helper.rb'

  describe 'Registrar conta' do

    # :each = executa entes de cada it
    # :all = executa uma vez só antes de tud

    before (:each) do
      @person = OpenStruct.new
      @person.first_name = Faker::Name.first_name
      @person.last_name = Faker::Name.last_name
      @person.street_name = Faker::Address.street_name
      @person.email = Faker::Internet.free_email
      @person.number = Faker::Number.number(10)
    end
    
    it 'Com sucesso' do
      home.load
      home.fill_acoount(@person)
      home.select_gender
      home.select_hobbies
      home.select_language
      home.select_skills
      home.select_country('indi')
      home.select_birth
      home.fill_password('Teste123', 'Teste123')
      home.submit
      expect(page).to have_current_path('http://demo.automationtesting.in/WebTable.html', url: true)
    end

    it 'Com sucesso II' do
      home.load
      home.fill_acoount(@person)
      home.select_gender
      home.select_hobbies
      home.select_language
      home.select_skills
      home.select_country('indi')
      home.select_birth
      home.fill_password('Teste123', 'Teste123')
      home.submit
      expect(page).to have_current_path('http://demo.automationtesting.in/WebTable.html', url: true)
    end
  end
