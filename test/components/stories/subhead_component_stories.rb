class SubheadComponentStories < ViewComponent::Storybook::Stories
    story :subheader_1 do
        constructor(title: 'Subheader',description: 'This is the content') do 
            "Subheader 1"
        end
    end

    story :subheader_2 do
        constructor(title: 'Subheader',description: 'This is the content', danger: true) do 
            "Subheader 2"
        end
    end
  end