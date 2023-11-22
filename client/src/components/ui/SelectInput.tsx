import clsx from 'clsx'

interface Props extends React.SelectHTMLAttributes<HTMLSelectElement> {
  children?: React.ReactNode
  options: string[]
}

export function SelectInput({ children, className, options, ...rest }: Props) {
  return (
    <div className="relative inline-block">
      <select
        {...rest}
        className={clsx(
          'appearance-none bg-transparent border border-black rounded-md w-36 px-4 py-2 pr-8 leading-tight focus:outline-none focus:shadow-outline focus:ring-0',
          className
        )}
      >
        {options.map(optionValue => (
          <option value={optionValue}>{optionValue}</option>
        ))}
      </select>
    </div>
  )
}
