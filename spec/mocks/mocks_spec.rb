require 'student'
require 'course'

describe "Mocks" do
  it '#registered?' do
    # Setup
    student = Student.new

    # Verify
    expect(student).to receive(:registered?)

    # Exercise
    student.registered?
  end

  it 'args' do
    student = Student.new
    expect(student).to receive(:score).with(7)
    student.score(7)
  end

  it 'repetição' do
    student = Student.new
    # .once, .twice, .exactly(n).times, .at_least(:once)...
    expect(student).to receive(:score).with(7).twice
    student.score(7)
    student.score(7)
  end

  it 'retorno' do
    student = Student.new
    # .and_return funciona como um stub
    expect(student).to receive(:score).with(7).and_return(true)
    student.score(7)
  end
end