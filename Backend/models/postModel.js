import db from "../database/db.js";

import { DataTypes } from "sequelize";

const postModel = db.define('POSTS', {

    id_post: {
		type: DataTypes.INTEGER,
		allowNull: false,
		primaryKey: true,
		autoIncrement: true,
        field: "id_posts"
	},
    title:{
        type: DataTypes.STRING,
		allowNull: false,			
        field: "title"
    },

    description:{
        type: DataTypes.STRING,
		allowNull: true,		
        field: "description"
    }
    
})

export default postModel