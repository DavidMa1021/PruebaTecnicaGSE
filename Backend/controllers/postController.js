import PostModel from "../models/postModel.js";


export const getAllPosts = async (req, res) => {
    try {
        const posts = await PostModel.findAll()
        res.json(posts)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getPost = async (req, res) => {
    try {
        const post = await PostModel.findAll({
            where: {
                id_post: req.params.id_post
            }
        })
        res.json(post[0])
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const createPost = async (req, res) =>{
    try {
        await PostModel.create(req.body)
        res.json({"message": "Publicacion creada con éxito"})
    } catch (error) {
        res.json({ message: error.message })
    }
}

