export default function SelectTrip() {
  return (
    <section className="flex items-center justify-center gap-10">
      <div className="w-[475px] h-[550px] p-4 flex flex-col items-center justify-center gap-6 rounded-md border-2 border-gray-400 drop-shadow-md cursor-pointer focus:border-sky-500">
        <span className="">
          <img src="/images/conozco-mi-destino.png" />
        </span>
        <h2 className="text-4xl text-center flex-wrap font-bold">
          CONOZCO MI DESTINO
        </h2>
      </div>

      <div className="w-[475px] h-[550px] p-4 flex flex-col items-center justify-center gap-6 rounded-md border-2 border-gray-400 drop-shadow-md cursor-pointer">
        <span className="">
          <img src="/images/quiero-recomendaciones.png" />
        </span>
        <h2 className="text-4xl text-center flex-wrap font-bold">
          CONOZCO MI DESTINO QUIERO RECOMENDACIONES
        </h2>
      </div>
    </section>
  )
}
