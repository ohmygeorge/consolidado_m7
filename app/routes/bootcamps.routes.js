import express from 'express';
import {
	findAll,
	createBootcamp,
	findById,
	// addUser,??????
	// updateBootcamps,
	// deleteBootcamps,
} from '../controllers/bootcamp.controller.js';

const router = express.Router();
router.get('/', findAll);
router.post('/', createBootcamp);
router.get('/id/:id', findById);
//router.post('/', addUser);??????
// router.put("/id/:id", updateBootcamps);
// router.delete("/id/:id", deleteBootcamps);

export default router;