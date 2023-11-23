import { useState } from 'react'
import clsx from 'clsx'
import { ExpandMore } from '../icons/ExpandMore'

interface Props {
  icon: React.ReactElement
  title: string
  values?: string[]
  elements: React.ReactElement[]
  className?: string
}

export function SelectInput({ className, icon, elements, title }: Props) {
  const [isOpen, setIsOpen] = useState(true)

  return (
    <div className="relative inline-block mx-5 my-3 py-3">
      <button
        onClick={() => setIsOpen(!isOpen)}
        className={clsx(
          'border-2 border-black focus:outline-none focus:ring-blue-300 font-medium rounded-md w-[285px] text-sm text-center inline-flex items-center justify-between gap-3',
          className,
          {
            'rounded-b-none': !isOpen
          }
        )}
        type="button"
      >
        {icon}

        <span className="text-base">{title}</span>

        <span className="border-l-2 border-black py-2.5">
          <ExpandMore />
        </span>
      </button>

      <div
        className={clsx(
          'absolute z-10 px-[2.85rem] py-1.5 bg-white divide-y divide-gray-100 rounded-b-md shadow border-b-2 border-r-2 border-l-2 border-black',
          {
            hidden: isOpen
          }
        )}
      >
        <ul className="px-10 py-3 space-y-4 text-sm text-gray-700">
          {elements.map((element, index) => (
            <li
              key={index}
              className="border-b-2 border-black w-max last:border-b-0"
            >
              {element}
            </li>
          ))}
        </ul>
      </div>
    </div>
  )
}
