﻿#language: ru

@tree

Функционал: Проверка корректности проведения документа "Обслуживание клиента"

Как Специалист я хочу
Заполнить табличные части двух документов "Обслуживание клиента" и провести их
чтобы проверить корректность закрытия заявок на обслуживание клиентов  

Контекст:
	Дано Я подключаю клиент тестирования "Специалист" из таблицы клиентов тестирования
	

Сценарий: Проверка проведения документа "Обслуживание клиента"
*Я провожу первый документ "Обслуживание клиента"
	* Я открываю форму списка документа "Обслуживание клиентов"
		И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживание клиентов'
		Тогда открылось окно 'Обслуживание клиентов'
		И в таблице "Список" я активизирую поле с именем "ВКМ_Клиент"
		И в таблице "Список" я выбираю текущую строку
		* Я заполняю табоичную часть первого документа "Обслуживание клиентов"
			Тогда открылось окно 'Обслуживание клиента * от *'
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Диагностика'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Ремонт шлейфа'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '5,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '5,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Инструктаж'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '1,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
			И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 20 секунд
		Тогда открылось окно 'Обслуживание клиентов'
		И в таблице  "Список" я перехожу на одну строку вверх
		И в таблице "Список" я выбираю текущую строку
		* Я заполняю табоичную часть второго документа "Обслуживание клиентов"
			Тогда открылось окно 'Обслуживание клиента * от *'
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Диагностика'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Замена жесткого диска'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '3,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '3,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Инструктаж'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате"
			И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_СуммаКОплате' я ввожу текст '3,00'
			И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
			И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
			И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 20 секунд
			
