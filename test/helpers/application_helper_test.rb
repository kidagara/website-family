require "test_helper"

describe ApplicationHelper do
  describe "full_title" do
    it "formats a full title with arguement" do
      full_title("Home").must_equal "Huntsman - Home"
    end

    it "formats a full title without arguement" do
      full_title.must_equal "Huntsman"
    end
  end
end
