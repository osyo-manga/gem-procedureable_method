require "spec_helper"

using ProcedureableMethod

RSpec.describe ProcedureableMethod do
	context "Method#===" do
		subject { -> value {
			case value
			when 1.method(:<)
				"plus"
			when -1.method(:>)
				"minus"
			when 0.method(:==)
				"zero"
		end
		} }
		it { expect(subject.call 42).to eq "plus" }
		it { expect(subject.call -4).to eq "minus" }
		it { expect(subject.call  0).to eq "zero" }
	end
end
