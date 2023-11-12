import type { Request, Response, NextFunction } from 'express'
import { createAuthUser, findUserBy } from '../services/user.service'
import type { SocialAuth } from '../types'

export const login = async (
  req: Request<unknown, unknown, SocialAuth>,
  res: Response,
  next: NextFunction
) => {
  try {
    const { email, user, nick_name, ...restData } = req.body
    const userFound = await findUserBy({ email })
    if (!userFound) {
      const authUser = await createAuthUser({ email, ...restData })

      res.status(201).json({
        ok: true,
        msg: 'User created',
        socialUser: authUser
      })
      return
    }

    res.status(200).json({
      ok: true,
      msg: 'Login correct',
      socialUser: userFound
    })
  } catch (error) {
    next(error)
  }
}
