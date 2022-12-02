import { Sequelize } from "sequelize";

const db = new Sequelize('posts-app','root','J3rry2016*',{
    host:'localhost',
    dialect:'mysql'
})

export default db 
