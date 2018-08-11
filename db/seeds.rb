5.times do |x|
  Blog.create!(
    title: "#{x} Neque porro quisquam est qui dolorem ipsum",
    
    body: 
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam efficitur ex a scelerisque fermentum. Praesent nec massa justo. Quisque et nisl eros. Sed vehicula orci eget placerat hendrerit. Nunc ac sodales tortor. Proin lobortis hendrerit sapien, in aliquam orci elementum eu. Proin blandit urna neque, id maximus nibh luctus non. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce non feugiat ex. Sed ac placerat ex. Nunc maximus leo sit amet sapien egestas, ac blandit felis elementum. In maximus dolor vitae turpis tincidunt, eget aliquam diam ultrices. Proin vel enim a nibh faucibus hendrerit. Proin ligula risus, ultrices quis dui et, consequat aliquam sem. Morbi mollis eget purus in aliquet. Pellentesque neque ex, auctor sit amet venenatis at, iaculis quis sapien.
        
            Nullam at rhoncus tortor, a sagittis neque. Phasellus accumsan pellentesque nulla mollis hendrerit. In nec nibh semper, ultricies diam eu, viverra lectus. Phasellus rutrum rhoncus metus, non rutrum leo. Quisque consequat fermentum leo. Etiam porttitor magna sed tellus interdum, ultrices tristique arcu efficitur. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed at orci eget dolor blandit dignissim vel sit amet eros. In vitae laoreet erat, sit amet laoreet turpis. Sed non lacus velit. Pellentesque aliquet vitae lorem sit amet dapibus.

            In sollicitudin turpis est, id interdum est ornare et. Cras a cursus nulla. Duis nibh dui, accumsan nec nunc ac, bibendum semper eros. Curabitur non velit nulla. Nulla pulvinar accumsan tellus nec lacinia. Nulla sed neque sed nulla hendrerit vestibulum quis interdum libero. Vestibulum tincidunt viverra tortor dapibus dignissim.

            In volutpat consectetur blandit. Vivamus sed tortor in erat rhoncus sollicitudin vel quis metus. Duis accumsan magna id consectetur lobortis. Etiam rhoncus lectus in tellus tempus interdum. In et ex ut elit mollis laoreet. Nullam tristique maximus condimentum. Sed eget fringilla odio. Donec molestie vulputate lectus, vitae convallis ipsum fermentum eu. Nunc aliquam mi vitae scelerisque tristique. Duis in bibendum mauris. Proin sem odio, tristique eget volutpat sed, consequat fermentum orci. Phasellus eros nisl, faucibus sed convallis nec, tempor sed ligula. Nulla sit amet elementum metus, aliquam varius metus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed id tortor tempor, molestie felis ut, dapibus mi. Nam condimentum sapien quis placerat pretium.

            Sed at arcu est. Duis vulputate magna eget tristique ullamcorper. Proin dignissim magna in libero suscipit, id rhoncus purus egestas. Integer eget lectus eros. Quisque id efficitur massa, ut euismod est. In eu laoreet purus, a volutpat lectus. Nunc accumsan dolor tortor, sit amet scelerisque arcu blandit nec. Suspendisse a risus vitae leo varius volutpat. In sit amet lorem purus. Aliquam faucibus odio eu nibh blandit, id tincidunt enim efficitur. Curabitur eget tincidunt nunc, ut viverra felis. Aliquam id ante gravida, scelerisque diam ut, tincidunt lacus. "
    )

  Topic.create!(
    title:'tech')
  Topic.create!(
    title: 'entertainment')
  Topic.create!(
    title: 'news')
  Topic.create!(
    title: 'sports')
  Topic.create!(
    title: 'future')
end