class Person
  def a(num)
    sleep(num)
    "Hello"
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq("Hello")
    end
  end

  describe 'instance double' do
    it 'only can implement methods that are defined on the class' do
      # an error is expected if added more def than exists in the Person class like b:20
      person = instance_double(Person, a: "Hello")
      allow(person).to receive(:a).with(3).and_return("Hello") #optional for the test to pass
      # if you don't pass the exact args the test to the def is going to fail
      expect(person.a(3)).to eq("Hello")
    end

  end

end
