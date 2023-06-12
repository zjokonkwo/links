describe "The home page" do
  it "renders an HTML page", points: 1 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "The home page" do
  it "has at least three links", points: 3 do
    visit "/"

    a_count = all("a").count
    expect(a_count).to be >= 3,
                       "Expected page to have at least three 'a' HTML link elements, but found #{a_count} instead."
  end
end
