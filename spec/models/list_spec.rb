require 'rails_helper'

describe List do
  describe "validations" do
    describe "length validation" do

      it "only allows list names with 5 or more characters." do
        i = List.name(value: 4)
        expect(i.valid?).to eq(false)

        i = List.name(value: 6)
        expect(i.valid?).to eq(true)
        end
      end
    end
  end
