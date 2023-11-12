import { Status, Gender } from './enums'

export interface User {
  _id?: string
  username?: srting
  name?: string
  lastName?: string
  birthdate?: Date
  gender: Gender
  country?: string
  phone?: number
  emergency_contact?: string
  active: boolean
  isAdmin: boolean
}

export interface SocialAuth {
  _id: string
  email: string
  redsocial_name: string
  nick_name?: string
  user?: User
}

export interface Activity {
  name: string
  status: Status
  imageURL: string
}

export interface Destination {
  name: string
  status: Status
  imageURL: string
  latitude: number
  longitude: number
}

export interface Category {
  name: string
  status: Status
  imageURL: string
}
