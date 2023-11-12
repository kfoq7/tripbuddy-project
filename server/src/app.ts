import 'dotenv/config'
import express from 'express'
import morgan from 'morgan'
import { router } from './routes'
import { connectionDB } from './lib/dbConnection'

const PORT = process.env.PORT ?? 8080

const app = express()

app.use(express.json())
app.use(express.urlencoded({ extended: true }))
app.use(morgan('dev'))

app.use('/api', router)

connectionDB().then(() => {
  console.log('Connected to MongoDB')
})

app.listen(PORT, () => {
  console.log(`Server deploying on port http://localhost:${PORT}/api/`)
})
