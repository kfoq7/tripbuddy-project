import { useState, type ReactElement } from 'react'

interface Params {
  steps: ReactElement[]
}

export function useMultistepForm({ steps }: Params) {
  const [currentStepIndex, setCurrentStepIndex] = useState(0)

  const nextStep = () => {
    setCurrentStepIndex(prev => {
      if (prev >= steps.length - 1) return prev

      return prev + 1
    })
  }

  const previousStep = () => {
    setCurrentStepIndex(prev => {
      if (prev <= 0) return prev

      return prev - 1
    })
  }

  return {
    step: steps[currentStepIndex],
    nextStep,
    previousStep
  }
}
