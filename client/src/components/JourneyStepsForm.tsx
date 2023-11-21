import { Button } from './ui/Button'
import { useMultistepForm } from '../hooks/useMultistepForm'
import SelectTrip from './SelectTrip'

export default function JourneyStepsForm() {
  const { step, nextStep, previousStep } = useMultistepForm({
    steps: [<SelectTrip />, <div>Tow</div>, <div>Tree</div>]
  })

  return (
    <>
      <div className="">
        <form>{step}</form>
      </div>

      <div className="mt-4 flex flex-wrap items-center justify-center gap-6">
        <Button className="w-[180px] text-xl" onClick={previousStep}>
          Atras
        </Button>
        <Button className="w-[180px] text-xl" onClick={nextStep}>
          Siguiente
        </Button>
      </div>
    </>
  )
}
