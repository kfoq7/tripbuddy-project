import clsx from 'clsx'

interface Props extends React.ButtonHTMLAttributes<HTMLButtonElement> {
  className?: string
  children: React.ReactNode
}

export function Button({ className, children, ...rest }: Props) {
  return (
    <button
      {...rest}
      className={clsx(
        'w-36 px-5 py-2 bg-sky-400 rounded-md text-white text-center tracking-normal hover:bg-sky-500',
        className
      )}
    >
      {children}
    </button>
  )
}
