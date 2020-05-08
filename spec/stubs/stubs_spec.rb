require 'student'
require 'course'

describe "Stub" do
  let(:student) { Student.new }

  it '#has_finished?' do
    course = Course.new

    # has_finished? é um método que está vazio
    allow(student).to receive(:has_finished?)
      .with(an_instance_of(Course))
      .and_return(true)

    finished_course = student.has_finished?(course)
    expect(finished_course).to be_truthy
  end

  it 'Argumentos dinâmicos' do
    allow(student).to receive(:score) do |arg|
      if arg >= 6
        "Passou"
      else
        "Reprovou"
      end
    end

    expect(student.score(7)).to eq("Passou")
  end

  it 'Qualquer instância de classe' do
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:registered?).and_return(true)

    expect(student.registered?).to be_truthy
    expect(other_student.registered?).to be_truthy
  end

  it 'Erros' do
    allow(student).to receive(:registered?).and_raise(RuntimeError)
    expect{ student.registered? }.to raise_error(RuntimeError)
  end
end