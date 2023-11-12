import mongoose from 'mongoose'

export const connectionDB = async () => {
  try {
    mongoose.set('strictQuery', false)
    await mongoose.connect(process.env.URI_MONGODB!)
  } catch (error) {
    console.error(error)
  }
}
