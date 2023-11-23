import { useState } from 'react'
import clsx from 'clsx'
import { ExpandMore } from '../icons/ExpandMore'

interface Props extends React.SelectHTMLAttributes<HTMLSelectElement> {
  rightIcon?: React.ReactElement
  title: string
  values?: string[]
  elements: React.ReactElement[]
  children?: React.ReactNode
}

export function SelectInput({
  children,
  className,
  values,
  rightIcon,
  elements,
  title,
  ...rest
}: Props) {
  const [isOpen, setIsOpen] = useState(true)

  return (
    <div className="relative inline-block">
      <button
        onClick={() => setIsOpen(!isOpen)}
        className={clsx(
          'border-2 border-black focus:outline-none focus:ring-blue-300 font-medium rounded-md text-sm px-10 py-3 text-center inline-flex items-center ',
          className
        )}
        type="button"
      >
        {title} <ExpandMore />
      </button>

      <div
        className={clsx(
          'absolute z-10 w-48 bg-white divide-y divide-gray-100 rounded-lg shadow dark:bg-gray-700 dark:divide-gray-600',
          {
            hidden: isOpen
          }
        )}
      >
        <ul className="p-3 space-y-3 text-sm text-gray-700 dark:text-gray-200">
          {elements.map(element => (
            <li>{element}</li>
          ))}
          <li>
            <div className="flex items-center">
              <input
                id="checkbox-item-1"
                type="checkbox"
                value=""
                className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500"
              />
              <label
                htmlFor="checkbox-item-1"
                className="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
              >
                Default checkbox
              </label>
            </div>
          </li>
          <li>
            <div className="flex items-center">
              <input
                checked
                id="checkbox-item-2"
                type="checkbox"
                value=""
                className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500"
              />
              <label
                htmlFor="checkbox-item-2"
                className="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
              >
                Checked state
              </label>
            </div>
          </li>
          <li>
            <div className="flex items-center">
              <input
                id="checkbox-item-3"
                type="checkbox"
                value=""
                className="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 rounded focus:ring-blue-500 dark:focus:ring-blue-600 dark:ring-offset-gray-700 dark:focus:ring-offset-gray-700 focus:ring-2 dark:bg-gray-600 dark:border-gray-500"
              />
              <label
                htmlFor="checkbox-item-3"
                className="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300"
              >
                Default checkbox
              </label>
            </div>
          </li>
        </ul>
      </div>
    </div>
  )
}
