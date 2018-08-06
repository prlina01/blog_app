5.times do |x|
  Blog.create!(
    title: "#{x} Neque porro quisquam est qui dolorem ipsum",
    
    body: 
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin aliquet est ut dolor ultrices, id pharetra ipsum vulputate. Nulla congue tincidunt eros eget bibendum. Nam nec porttitor lacus, ut interdum ante. Duis lobortis tempus pulvinar. Nunc luctus, dui vitae laoreet suscipit, mauris magna lacinia odio, eget varius est quam ac enim. Vivamus tempor dapibus orci ac scelerisque. Integer sodales suscipit sapien eget commodo. Maecenas at turpis id velit hendrerit facilisis. Vivamus scelerisque, velit ut tincidunt iaculis, dui lectus semper mi, id facilisis ligula nunc et urna. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae"
    )
end