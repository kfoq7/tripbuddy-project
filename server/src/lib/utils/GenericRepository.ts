import { Model } from 'mongoose'

export default class GenericRepository<T> {
  private model: Model<T>

  constructor(model: Model<T>) {
    this.model = model
  }

  async create(data: Partial<T>): Promise<T> {
    return this.model.create(data)
  }

  async findById(id: string): Promise<T | null> {
    return this.model.findById(id).then(data => data)
  }

  async update(id: string, data: Partial<T>): Promise<T | null> {
    return this.model.findByIdAndUpdate(id, data, { new: true }).then(data => data)
  }

  async delete(id: string) {
    return this.model.findByIdAndDelete(id).then(data => data)
  }

  async findAll(): Promise<T[]> {
    return this.model.find().then(data => data)
  }
}
