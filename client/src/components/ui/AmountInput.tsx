import { useState } from 'react'
import clsx from 'clsx'

interface Props {
  title: string
  className?: string
}

export function AmountInput({ title, className }: Props) {
  const [count, setCount] = useState(0)

  return (
    <div className={clsx('flex items-center justify-center gap-2', className)}>
      <h2 className="w-16">{title}</h2>

      <button
        onClick={e => {
          e.preventDefault()
          setCount(count => (count <= 0 ? count : count - 1))
        }}
      >
        -
      </button>
      {count}
      <button
        onClick={e => {
          e.preventDefault()
          setCount(count => count + 1)
        }}
      >
        +
      </button>
    </div>
  )
}
