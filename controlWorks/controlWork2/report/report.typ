#import "@preview/xarrow:0.3.1": xarrow
#import "@preview/diverential:0.2.0": *
#import "@preview/polytonoi:0.1.0": *
#import "@preview/fletcher:0.5.7" as fletcher: diagram, node, edge
#import fletcher.shapes: diamond

#show raw.where(block: true): it => { set par(justify: false); grid(
  columns: (100%, 100%),
  column-gutter: -100%,
  block(width: 100%, inset: 1em, for i in it.text.split("\n") {
    linebreak()
  }),
  block(radius: 1em, fill: luma(246), width: 100%, inset: 1em, it),
)}
#show table.cell.where(y: 0): strong

#set page(
	paper: "a4",
	margin: (x: 0.8cm, y: 1.5cm),
)

#set text(
	font: "New Computer Modern",
	size: 11pt,
)

#set par(first-line-indent: (
	amount: 2em,
	all: true,
))

#set page(numbering: none)
#align(center, block[
	#set text(size: 12pt)
	#set heading(outlined: false)
	= Министерство науки и вышего образования Российской Федерации
	= Федеральное государственное бюджетное образовательное учреждение высшего образования
	#set text(lang: "fr")
	= "Российский химико-технологический университет имени Д.И. Менделеева" 
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 16pt)
	#set heading(outlined: false)
	= ОТЧЕТ ПО КОНТРОЛЬНОЙ РАБОТЕ №2
	= Вариант 7
])

#let count = 0
#while count < 10 {
	$ #linebreak() $
	count = count + 1
}

#align(center)[
	#table(
		columns: (8.85cm,) + (10.8cm,),
		stroke: none,

		table.cell(text(size: 13.4pt, "Выполнил студент группы КС-46:"), align: right), table.cell(text(size: 14.4pt, "Золотухин Андрей Александрович"), align: left),
		table.cell(text(size: 14.4pt, "Ссылка на репозиторий:"), align: right), table.cell(text(size: 14.4pt, "https://github.com/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "CorgiPuppy/"), align: left),
		table.cell("", align: right), table.cell(text(size: 14.4pt, "cybernetics-labs"), align: left),
		table.cell(text(size: 14.4pt, "Принял:"), align: right), table.cell(text(size: 14.4pt, "Женса Андрей Вячеславович"), align: left),
		table.cell(text(size: 14.4pt, "Дата сдачи:"), align: right), table.cell(text(size: 14.4pt, "24.12.25"), align: left),
		
	)
]

#let count = 0
#while count < 5 {
	$ #linebreak() $
	count = count + 1
}

#align(center, block[
	#set text(size: 14.4pt)
	#set heading(outlined: false)
	= Москва
	= 2025
])

#pagebreak()

#align(center, block[
	#outline(		
		title: "Оглавление",
	)
])

#pagebreak()

#set page(numbering: "1")
#align(center, block[
	= Описание задачи
])
Найти экстремали функционала при ограничениях:
$ \u{222B}^1_0 frac(sqrt(1 + (y')^2), y) d x, y(0) = 1, y(1) = 1 $

#pagebreak()

#align(center, block[
	= Выполнение задачи
])
Составлю уравнение Эйлера-Лагранжа:
$ F(x, y, y') = frac(sqrt(1 + (y')^2), y) $
$ F - y' dvp(F, y') = C $
Найду частную производную по $y'$:
$ dvp(F, y') = frac(1, y) * frac(1, 2 sqrt(1 + (y')^2)) * 2 y' = frac(y', y sqrt(1 + (y')^2)) $
Подставлю в формулу:
$ frac(sqrt(1 + (y')^2), y) - y' (frac(y', y sqrt(1 + (y')^2))) = C $
$ frac(1 + (y')^2 - (y')^2, y sqrt(1 + (y')^2)) = C $
$ frac(1, y sqrt(1 + (y')^2)) = C $
Обозначу константу как frac(1, C_1) и возведу обе части уравнения в квадрат:
$ y^2 (1 + (y')^2) = C^2_1 $
$ (y')^2 = frac(C^2_1 - y^2, y^2) $
$ y' = #math.plus.minus frac(sqrt(C^2_1 - y^2), y^2) $
Получилось дифференциальное уравнение с разделяющими переменными. Его решение - семейство окружностей:
$ (x - C_2)^2 + y^2 = C^2_1 $
Проверю граничные условия:
- При $x = 0, y = 1$: $(0 - C_2)^2 + 1^2 = C^2_1$
- При $x = 1, y = 1$: $(1 - C_2)^2 + 1^2 = C^2_1$
$ cases(
	C^2_2 + 1 = C^2_1",",
	(1 - C_2)^2 + 1 = C^2_1.
) $
$ cases(
	C_2 = frac(1, 2)",",
	C_1 = frac(5, 4).
) $
#text(weight: "bold")[Ответ]: Экстремалью является дуга окружности $(x - frac(1, 2))^2 + y^2 = frac(5, 4)$
