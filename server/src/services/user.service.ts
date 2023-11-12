import { userModel, socialAuthModel } from '../models'
import type { SocialAuth, User } from '../types'

export const findUserBy = async (filter: Partial<SocialAuth>) => {
  return socialAuthModel
    .findOne(filter)
    .populate('user')
    .then(data => data)
}

export const createUser = async (userData?: Partial<User>) => {
  return userModel.create(userData).then(data => data)
}

export const createAuthUser = async ({ user, ...restData }: Partial<SocialAuth>) => {
  const authUser = await socialAuthModel.create(restData)
  const userCreated = await createUser(user)
  authUser.user = userCreated
  return (await authUser.save()).populate('user').then(user => user)
}
