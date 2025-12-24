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
	= ОТЧЕТ ПО КОНТРОЛЬНОЙ РАБОТЕ №3
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
Найти экстремум функции $F(x)$ одним из четырех методов (методом золотого сечения, методом ломаных, методом касательных, методом Ньютона).
#align(
	center,
	table(
		columns: (auto, auto, auto, auto),
		align: horizon + center,
		table.header(
			[*F(x) =*], [*Тип экстремума*], [*Исходный интервал*], [*Погрешность*]
		),
		$x + frac(1, ln(x))$,
		$min$,
		$[-1.5; 3]$,
		$0.01$
	)
)

#pagebreak()

#align(center, block[
	= Выполнение задачи
])
Решу методом золотого сечения. В варианте задания, возможно, есть опечатка, т.к. по области допустимых значений: $x > 0$, т.к. подлогарифмическое выражение всегда положительное.
#let codeConstantsblock = read("../include/Constants.h")
#raw(codeConstantsblock, block:true, lang: "c++")

#let codeblock = read("../src/main.cpp")
#raw(codeblock, block:true, lang: "c++")

#text(weight: "bold")[Ответ]: \
варинт 7: F(x) = x + 1/ln(x) on [1.50000, 3.00000] \
--------------------------------------- \
Результат (x_min): 2.02040 \
Значение функции в точке минимума: 3.44228 \
