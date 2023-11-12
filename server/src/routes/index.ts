import fs from 'node:fs'
import { Router } from 'express'

const ROUTE_PATH = `${__dirname}`

const router = Router()

const cleanFileName = (filename: string) => {
  return filename.split('.').shift()
}

fs.readdirSync(ROUTE_PATH).forEach(filename => {
  const cleanName = cleanFileName(filename)
  if (cleanName !== 'index') {
    import(`./${cleanName}.router`).then(routerModule => {
      router.use(`/${cleanName}`, routerModule.router)
    })
  }
})

export { router }
