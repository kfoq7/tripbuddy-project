import { Schema, model } from 'mongoose'
import { Status } from '../types/enums'
import type { Category } from '../types'

const categorySchema = new Schema<Category>(
  {
    name: {
      type: String,
      required: true
    },
    status: {
      type: String,
      enum: Object.values(Status),
      default: Status.Active
    },
    imageURL: String
  },
  {
    versionKey: false
  }
)

const categoryModel = model<Category>('activity', categorySchema)

export default categoryModel
