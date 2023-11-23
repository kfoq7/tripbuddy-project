import clsx from 'clsx'

interface Props extends React.InputHTMLAttributes<HTMLInputElement> {
  icon?: React.ReactElement
  title?: string
}

export function Input({ children, className, icon, title, ...rest }: Props) {
  return (
    <div className="relative inline-block">
      {icon && <span className="absolute top-[1.60rem] left-2">{icon}</span>}
      <input
        {...rest}
        className={clsx(
          'w-[285px] my-3 p-[0.70rem] border-2 border-black rounded-md',
          {
            'pl-[2.2rem]': icon
          },
          className
        )}
      >
        {children}
      </input>
    </div>
  )
}
