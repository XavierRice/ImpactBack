
const checkFirstName = (req, res, next) => {
    if(req.body.first_name){
        return next()
    } else {
        res.status(400).json({ error: "First name is required" })
    }
}

const checkLastName = (req, res, next) => {
    if(req.body.last_name){
        return next()
    } else {
        res.status(400).json({ error: "Last name is required" })
    }
}

const checkUserName = (req, res, next) => {
    if(req.body.user_name){
        return next()
    } else {
        res.status(400).json({ error: "User name is required" })
    }
}

const checkEmail = (req, res, next) => {
    if(req.body.email){
        return next()
    } else {
        res.status(400).json({ error: "Email is required"})
    }
}

const checkPasswordHash = (req, res, next) => {
    if(req.body.password_hash){
        return next()
    } else {
        res.status(400).json({error: "password is required"})
    }
}













module.exports = { checkFirstName,
                   checkLastName,
                   checkUserName,
                   checkEmail,
                   checkPasswordHash
                 }