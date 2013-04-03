class Model::Page::Home < SitePrism::Page
  set_url "http://www.amazon.co.uk"

  element :header, '#welcomeRowTable'
end
