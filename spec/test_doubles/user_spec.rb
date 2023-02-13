describe "Test Double" do
  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack')
    allow(user).to receive(:password).and_return('secret')
    user.name
  end

  it 'as_null_object' do
    # Desconsidera os erros
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Jack')
    user.name
    user.xpto # Não existe
  end

end
