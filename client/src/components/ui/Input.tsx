import clsx from 'clsx'

interface Props extends React.InputHTMLAttributes<HTMLInputElement> {
  icon: React.ReactElement
}

export default function Input({ children, className, icon, ...rest }: Props) {
  return (
    <input {...rest} className={clsx('', className)}>
      {children}
    </input>
  )
}
