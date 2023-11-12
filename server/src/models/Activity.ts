import { Schema, model } from 'mongoose'
import { Status } from '../types/enums'
import type { Activity } from '../types'

const activitySchema = new Schema<Activity>(
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

const activityModel = model<Activity>('activity', activitySchema)

export default activityModel
