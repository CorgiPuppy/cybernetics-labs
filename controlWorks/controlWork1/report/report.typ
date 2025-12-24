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
	= ОТЧЕТ ПО КОНТРОЛЬНОЙ РАБОТЕ №1
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
#align(center, block[
	== Задание 1
])
Найти экстремум функции: $f(x) = x^3 - 2 x^2 + x + 1$
#align(center, block[
	== Задание 2
])
Найти экстремум функции при наличии ограничений:
$ f(x) = x y + 3 x^2 $
$ x + y = - 1 $

#pagebreak()

#align(center, block[
	= Выполнение задачи
])
#align(center, block[
	== Задание 1
])
Найду производную функции:
$ frac(d f, d x) = (x^3 - 2 x^2 + x + 1)' = 3 x^2 - 4 x + 1 $
Теперь найду критические точки, приравняв производную к 0:
$ 3 x^2 - 4 x + 1 = 0 $
$ x_(1, 2) = frac(4 #sym.plus.minus sqrt((-4)^2 - 4 * 3 * 1), 2 * 3) = 1; frac(1, 3) $
Определю характер экстремум с помощью #underline[второй] производной:
$ frac(d^2 f, d x^2) = 6 x - 4 $
- При $x_1 = 1$: $f''(1) = 6 * 1 - 4 = 2 > 0$. Т.к. $frac(d^2 f, d x^2)|_(x_1) > 0$, в точке $x = 1$ находится #text(weight: "bold")[минимум].
Значение функции: $f(1) = 1^3 - 2 * (1^2) + 1 + 1 = 1$.
- При $x_2 = frac(1, 3)$: $f''(frac(1, 3)) = 6 * frac(1, 3) - 4 = - 2 < 0$. Т.к. $frac(d^2 f, d x^2)|_(x_2) < 0$, в точке $x = frac(1, 3)$ находится #text(weight: "bold")[максимум].
Значение функции: $f(frac(1, 3)) = (frac(1, 3))^3 - 2 * ((frac(1, 3))^2) + frac(1, 3) + 1 = frac(31, 27)$. \
#text(weight: "bold")[Ответ]: Точка максимум $(frac(1, 3); frac(31, 27))$, точка минимума $(1; 1)$.
#align(center, block[
	== Задание 2
])
Найду функции Лагранжа как:
$ L = x y + 3 x^2 + #ptgk("l") (x + y + 1) $
Составлю систему уравнений:
$ cases(
	frac(d L, d x) = y + 6 x + #ptgk("l") = 0",",
	frac(d L, d y) = x + #ptgk("l") = 0",",
	frac(d L, d #ptgk("l")) = x + y + 1 = 0.
) $
$ cases(
	x = frac(1, 4)",",
	y = - frac(5, 4).
) $
Вычисляю f(x, y) в точке (frac(1, 4), -frac(5, 4)):
$ f(frac(1, 4), -frac(5, 4)) = frac(1, 4) * (- frac(5, 4)) + 3 * (frac(1, 4))^2 = - frac(1, 8) $
#text(weight: "bold")[Ответ]: Минимум $- frac(1, 8)$ в точке $(frac(1, 4); - frac(5, 4))$.
