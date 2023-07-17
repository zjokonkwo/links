describe "The home page" do
  it "renders an HTML page", points: 1 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "The home page" do
  it "has at least three `<a>` link elements", points: 3 do
    visit "/"

    a_count = all("a").count
    expect(a_count).to be >= 3,
      "Expected page to have at least three `<a>` HTML link elements, but found #{a_count} instead."
  end
end

describe "The home page" do
  it "has the DOCTYPE declaration as the VERY FIRST line.", points: 1 do
    visit "/"

    source_code = page.html
    source_code_without_extra_spaces = source_code.strip
    first_line = source_code_without_extra_spaces.split("\n").first
    downcased_first_line = first_line.downcase
    expect(first_line).to match(/<!doctype html>/i),
      "Expected the first line of the HTML file to contain a doctype declaration. Found: #{first_line}"
  end
end

describe "The home page" do
  it "has a `<head>` section to make it a valid HTML document.", points: 1 do
    visit "/"

    expect(page).to have_tag("head", count: 1),
      "Expected page to have a `<head>` HTML element to make it a valid HTML document."
  end
end

describe "The home page" do
  it "has a `<body>` section to make it a valid HTML document.", points: 1 do
    visit "/"

    expect(page).to have_tag("body", count: 1),
      "Expected page to have a `<body>` HTML element to make it a valid HTML document."
  end
end
