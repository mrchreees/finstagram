sharky_j = User.create({ 
    username: "sharky_j",
    avatar_url: "http://naserca.com/images/sharky_j.jpg",
    email: "sharky_j@example.com",
    password: "secret"
})

kirk_whalum = User.create({
    username: "kirk_whalum",
    avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
    email: "kirk_whalum@example.com",
    password: "secret"
})

marlin_peppa = User.create({
    username: "marlin_peppa",
    avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
    email: "marlin_peppa@example.com",
    password: "secret"
})


        
posts = [{
        user: sharky_j,
        photo_url: "http://naserca.com/images/shark.png",
        comments: [Comment.create({
            user: sharky_j, 
            text: "Out for the long weekend... too embarassed to show y'all the beach bod!"
        })]
    },
    {
        user: kirk_whalum,
        photo_url: "http://naserca.com/images/whale.jpg",
        comments: [Comment.create({
            user: kirk_whalum, 
            text: "#weekendvibes"
        })]
    },   
    {
        user: marlin_peppa,
        photo_url: "http://naserca.com/images/marlin.jpg",
        comments: [Comment.create({
            user: marlin_peppa, 
            text: "#lunchtime! ;)",
        })]
    }
]
    
posts.each do |post|
  Post.create(post)
end
