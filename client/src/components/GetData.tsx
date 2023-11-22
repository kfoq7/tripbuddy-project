import { SelectInput } from './ui/SelectInput'

export default function GetData() {
  const carOptions = [
    'Select car:',
    'Audi',
    'BMW',
    'Citroen',
    'Ford',
    'Honda',
    'Jaguar',
    'Land Rover',
    'Mercedes',
    'Mini',
    'Nissan',
    'Toyota',
    'Volvo'
  ]

  return (
    <div className="flex items-center justify-center">
      <SelectInput options={carOptions} />
    </div>
  )
}
