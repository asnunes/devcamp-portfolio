3.times do |x|
    Topic.create!(
        title: "Topic #{x}"
    )
end

puts "3 Topics created"

10.times do |x|
    Blog.create!(
        title: "Blog post #{x}",
        body: "Hearts of the stars extraplanetary rich in heavy atoms billions upon billions culture inconspicuous motes of rock and gas. Across the centuries at the edge of forever radio telescope birth permanence of the stars with pretty stories for which there's little good evidence. Descended from astronomers at the edge of forever realm of the galaxies made in the interiors of collapsing stars the carbon in our apple pies not a sunrise but a galaxyrise and billions upon billions upon billions upon billions upon billions upon billions upon billions.",
        topic_id: Topic.last.id,
    )
end

puts "10 blogs created"

5.times do |x|
    Skill.create!(
        title: "Rails #{x}",
        percent_utilized: 15    
    )
end

puts "5 skills created"

9.times do |x|
    Portfolio.create!(
        title: "Portfolio title: #{x}",
        subtitle: "My great service",
        body: "Bits of moving fluff network of wormholes tesseract the carbon in our apple pies citizens of distant epochs rich in mystery. Vanquish the impossible shores of the cosmic ocean encyclopaedia galactica intelligent beings encyclopaedia galactica with pretty stories for which there's little good evidence. Gathered by gravity as a patch of light paroxysm of global death stirred by starlight not a sunrise but a galaxyrise another world. Stirred by starlight a very small stage in a vast cosmic arena hearts of the stars kindling the energy hidden in matter two ghostly white figures in coveralls and helmets are soflty dancing a still more glorious dawn awaits and billions upon billions upon billions upon billions upon billions upon billions upon billions.",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200"
    )
end

1.times do |x|
    Portfolio.create!(
        title: "Portfolio title: #{x}",
        subtitle: "Angular",
        body: "Bits of moving fluff network of wormholes tesseract the carbon in our apple pies citizens of distant epochs rich in mystery. Vanquish the impossible shores of the cosmic ocean encyclopaedia galactica intelligent beings encyclopaedia galactica with pretty stories for which there's little good evidence. Gathered by gravity as a patch of light paroxysm of global death stirred by starlight not a sunrise but a galaxyrise another world. Stirred by starlight a very small stage in a vast cosmic arena hearts of the stars kindling the energy hidden in matter two ghostly white figures in coveralls and helmets are soflty dancing a still more glorious dawn awaits and billions upon billions upon billions upon billions upon billions upon billions upon billions.",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200",
    )
end

puts "10 portfolios created"

3.times do |x|
    Portfolio.last.technologies.create!(name: "Technology: #{x}")
end

puts "3 technologies created"


