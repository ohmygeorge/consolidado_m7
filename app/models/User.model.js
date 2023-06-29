import { DataTypes } from 'sequelize';
import sequelize from '../config/database.config.js';

const User = sequelize.define(
	'users',
	{
		firstName: {
			type: DataTypes.STRING(50),
			allowNull: false,
		},
		lastName: {
			type: DataTypes.STRING(50),
			allowNull: false,
		},
		email: {
			type: DataTypes.STRING,
			allowNull: false,
			unique: true,
			validate: {
				isEmail: true,
			},
		},
	},
	{ timestamps: true }
);

export default User;
