import GenericRepository from '../lib/utils/GenericRepository'
import { activityModel, categoryModel, destinationModel } from '../models'

export const activityService = new GenericRepository(activityModel)
export const categoryService = new GenericRepository(categoryModel)
export const destinationService = new GenericRepository(destinationModel)
