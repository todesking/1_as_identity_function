# -*- coding: utf-8 -*-

require '1_as_identity_function'

describe '1_as_identity_function' do
  describe 1 do
    subject { 1 }
    it { should be_respond_to(:to_proc) }
    describe '#to_proc' do
      subject { 1.to_proc }
      it { subject[1].should == 1 }
      it { subject[:symbol].should == :symbol }
      it { subject[nil].should == nil }
    end
  end

  describe 'Other Fixnum instances' do
    subject { 2 }
    it { should_not be_respond_to(:to_proc) }
    it { expect { subject.to_proc }.to raise_error(NoMethodError) }
  end
end
