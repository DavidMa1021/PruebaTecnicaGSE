import db from "../database/db.js";

import { DataTypes } from "sequelize";

const likesModel = db.define('LIKES', {

    email: {
		type: DataTypes.STRING,
		allowNull: false,
		primaryKey: true,
        field: "email"
	},
    id_post: {
		type: DataTypes.INTEGER,
		allowNull: false,
		primaryKey: true,
        field: "id_posts"
	},
    
    
})

export default likesModel