import { Schema, Types, model } from 'mongoose'
import type { SocialAuth } from '../types'

const socialAuthSchema = new Schema<SocialAuth>(
  {
    email: {
      type: String,
      required: true,
      unique: true
    },
    nick_name: {
      type: String,
      required: true
    },
    redsocial_name: {
      type: String,
      required: true
    },
    user: {
      type: Types.ObjectId,
      ref: 'user'
    }
  },
  {
    versionKey: false
  }
)

const socialAuthModel = model<SocialAuth>('socialAuth', socialAuthSchema)

export default socialAuthModel
