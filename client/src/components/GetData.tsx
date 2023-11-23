import { AmountInput } from './ui/AmountInput'
import { SelectInput } from './ui/SelectInput'
import { Input } from './ui/Input'
import { Button } from './ui/Button'
import { Person } from './icons/Person'
import { Question } from './icons/Question'
import { LocationOn } from './icons/LocationOn'
import { RequestCash } from './icons/RequestCash'

export default function GetData() {
  return (
    <section className="flex flex-col items-center justify-center">
      <h1 className="w-[500px] pb-10 text-center text-4xl font-extrabold">
        Elige tu destino y las fechas en que piensas viajar
      </h1>

      <div className="flex flex-col">
        <Input className="w-[550px] mb-1" icon={<LocationOn />} />
        <span
          onClick={e => {
            e.preventDefault()
            console.log('Adding new destination')
          }}
          className="mr-auto text-sm cursor-pointer"
        >
          + Agrega otro destino
        </span>
      </div>

      <div className="flex items-center justify-center">
        <Input type="date" />
        <SelectInput
          icon={<Person />}
          title="Numero personas"
          elements={[
            <AmountInput title="Adultos" />,
            <AmountInput title="Niños" />,
            <AmountInput title="Adultos" />
          ]}
        />
        <Input
          placeholder="Presupuesto por persona"
          title="USD"
          icon={<RequestCash />}
        />
      </div>

      <h2 className="text-black font-semibold pt-5 pb-2 flex items-center">
        Te gustaria incluir alojamiento
        <span className="mx-2 rounded-full bg-black text-white">
          <Question />
        </span>
      </h2>

      <div className="flex items-center justify-center gap-5 pt-5">
        <Button className="w-[324px] text-xl text-gray-800 bg-white border-2 border-black tracking-tighter font-semibold">
          Quiero un hotel
        </Button>
        <Button className="w-[324px] text-xl text-gray-800 bg-white border-2 border-black tracking-tighter font-semibold">
          Quiero un Airbnb
        </Button>
        <Button className="w-[324px] text-xl text-gray-800 bg-white border-2 border-black tracking-tighter font-semibold">
          No, gracias
        </Button>
      </div>
    </section>
  )
}
