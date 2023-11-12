import { Schema, model } from 'mongoose'
import { Status } from '../types/enums'
import type { Destination } from '../types'

const destinationSchema = new Schema<Destination>(
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
    latitude: Number,
    longitude: Number,
    imageURL: String
  },
  {
    versionKey: false
  }
)

const destinationModel = model<Destination>('activity', destinationSchema)

export default destinationModel
