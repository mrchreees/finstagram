walken_lova = User.create({ 
    username: "walken_lova",
    avatar_url: "http://www.famousbirthdays.com/headshots/christopher-walken-3.jpg",
    email: "walkenlova@cowbell.com",
    password: "secret"
})

christopher = User.create({
    username: "christopher",
    avatar_url: "https://s-media-cache-ak0.pinimg.com/originals/a0/81/9f/a0819f2ca9598ac7aee25ef82c059424.jpg",
    email: "christopher@walken.com",
    password: "secret"
})

mrchreees = User.create({
    username: "mrchreees",
    avatar_url: "http://www.thefreshfilms.com/actors/images/walken_christopher.jpg",
    email: "christopher_walken@gmail.com",
    password: "secret"
})


        
posts = [{
        user: walken_lova,
        photo_url: "https://i.ytimg.com/vi/51lFmdChOA0/maxresdefault.jpg",
        comments: [Comment.create({
            user: walken_lova, 
            text: "Two little mice!"
        })]
    },
    {
        user: christopher,
        photo_url: "https://s-media-cache-ak0.pinimg.com/736x/85/82/21/8582217bb81be6d819bd2d5e64892e35.jpg",
        comments: [Comment.create({
            user: christopher, 
            text: "I hid this uncomfortable hunk of metal up my @$$ two years. Then, after seven years, I was sent home to my family. And now, little man, I give the watch to you."
        })]
    },   
    {
        user: mrchreees,
        photo_url: "https://s-media-cache-ak0.pinimg.com/originals/84/fd/7d/84fd7de047ded4e2eb113ec91f78ac86.jpg",
        comments: [Comment.create({
            user: mrchreees, 
            text: "gotta have more cowbell! ;)",
        })]
    }
]
    
posts.each do |post|
  Post.create(post)
end
