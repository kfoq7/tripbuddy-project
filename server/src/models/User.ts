import { Schema, Types, model } from 'mongoose'
import type { User } from '../types'

const userSchema = new Schema<User>(
  {
    username: String,
    name: String,
    lastName: String,
    birthdate: Date,
    gender: {
      type: String,
      enum: ['MALE', 'FEMALE']
    },
    country: String,
    phone: Number,
    emergency_contact: String,
    active: {
      type: Boolean,
      default: true
    },
    isAdmin: {
      type: Boolean,
      default: false
    }
  },
  {
    versionKey: false
  }
)

const userModel = model<User>('user', userSchema)

export default userModel
