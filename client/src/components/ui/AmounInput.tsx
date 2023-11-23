import { useState } from 'react'
import clsx from 'clsx'

interface Props {
  title: string
  className?: string
  elements?: React.ReactElement[]
}

export function AmountInput({ title, className, elements }: Props) {
  const [count, setCount] = useState(0)

  return (
    <div className={clsx('flex items-center justify-center', className)}>
      <div>
        <strong>{title}</strong>
      </div>

      <button onClick={() => setCount(count => count + 1)}> + </button>
      {count}
      <button onClick={() => setCount(count => count - 1)}> + </button>
    </div>
  )
}
