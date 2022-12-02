import express from "express";
import { createPost, getAllPosts, getPost } from "../controllers/postController.js";
import { createUser, getAllUSers, getUser } from "../controllers/userController.js";


const router = express.Router()

// Rutas para usuarios
router.get('/users/', getAllUSers)
router.get('/users/:email', getUser)
router.post('/users/',createUser)


// Rutas para publicaciones
router.get('/posts/', getAllPosts)
router.get('/posts/:id_post', getPost)
router.post('/posts/',createPost)


export default router