import { AmountInput } from './ui/AmounInput'
import { SelectInput } from './ui/SelectInput'

export default function GetData() {
  const amountInputs = [<AmountInput title="Adultos" />]

  return (
    <div className="flex items-center justify-center">
      <SelectInput
        title="Numero personas"
        elements={amountInputs}
      ></SelectInput>
    </div>
  )
}
