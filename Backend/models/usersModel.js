import db from "../database/db.js";

import { DataTypes } from "sequelize";

const userModel = db.define('USERS', {

    email: {
		type: DataTypes.STRING,
		allowNull: false,
		primaryKey: true,
        field: "email"
	},
    names:{
        type: DataTypes.STRING,
		allowNull: false,			
        field: "names"
    },

    lastnames:{
        type: DataTypes.STRING,
		allowNull: false,		
        field: "lastnames"
    }
    
})

export default userModel