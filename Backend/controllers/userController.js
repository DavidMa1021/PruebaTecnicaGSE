import UserModel from "../models/usersModel.js"


export const getAllUSers = async (req, res) => {
    try {
        const users = await UserModel.findAll()
        res.json(users)
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const getUser = async (req, res) => {
    try {
        const user = await UserModel.findAll({
            where: {
                email: req.params.email
            }
        })
        res.json(user[0])
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const createUser = async (req, res) =>{
    try {
        await UserModel.create(req.body)
        res.json({"message": "Usuario creado con éxito"})
    } catch (error) {
        res.json({ message: error.message })
    }
}

