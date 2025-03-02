﻿#language: ru

@tree

Функционал: Проверка корректности создания документа "Обслуживание клиента"

Как менеджер я хочу
Созданать два документа "Обслуживание клиента" 
чтобы проверить работоспособность ТГ бота и запланировать несколько обслуживаний клиентов для специалистов   

Контекст:
	Дано Я подключаю клиент тестирования "Менеджер" из таблицы клиентов тестирования

Сценарий: Проверка создания документа "Обслуживание клиента"
*Я создаю первый документ "Обслуживание клиента"
	* Я открываю форму списка документа "Обслуживание клиентов"
		И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживание клиентов'
		Тогда открылось окно 'Обслуживание клиентов'
		* Я создаю новый документ "Обслуживание клиента"
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Обслуживание клиента (создание)'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_Клиент"
			Тогда открылось окно 'Контрагенты'
			И в таблице "Список" я активизирую дополнение формы с именем "СписокСтрокаПоиска"
			И в таблице "Список" в дополнение формы с именем 'СписокСтрокаПоиска' я ввожу текст 'теа'
			* Я создаю нового контрагента
				И я нажимаю на кнопку с именем 'ФормаСоздать'
				Тогда открылось окно 'Контрагент (создание)'
				И в поле с именем 'Наименование' я ввожу текст 'Театрол'
				И я нажимаю на кнопку с именем 'ФормаЗаписать'
				Тогда открылось окно 'Театрол (Контрагент)'
				И В текущем окне я нажимаю кнопку командного интерфейса 'Договоры контрагентов'
				* Я создаю новый абонентский договор
					И я нажимаю на кнопку с именем 'ФормаСоздать'
					Тогда открылось окно 'Договор контрагента (создание)'
					И в поле с именем 'Наименование' я ввожу текст 'Аб-Тл-1'
					И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Зингер-Компьютер"'
					И из выпадающего списка с именем "ВидДоговора" я выбираю точное значение 'Абонент'
					И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаНачала"
					И в поле с именем 'ВКМ_ДатаНачала' я ввожу текст '01.05.2024'
					И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаОкончания"
					И в поле с именем 'ВКМ_ДатаОкончания' я ввожу текст '31.05.2024'
					И в поле с именем 'ВКМ_АбонентскаяПлата' я ввожу текст '16 000,00'
					И в поле с именем 'ВКМ_СтавкаЧаса' я ввожу текст '500,00'
					И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
					И я жду закрытия окна 'Договор контрагента (создание) *' в течение 20 секунд
				Тогда открылось окно 'Театрол (Контрагент)'
				И Я закрываю окно 'Театрол (Контрагент)'
				Тогда открылось окно 'Контрагенты'
				И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Обслуживание клиента (создание) *'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_Договор"
			Тогда открылось окно 'Договоры контрагентов'
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Обслуживание клиента (создание) *'
			И из выпадающего списка с именем "ВКМ_Специалист" я выбираю точное значение 'Икша И.И.'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаПроведенияРабот"
			И в поле с именем 'ВКМ_ДатаПроведенияРабот' я ввожу текст '28.05.2024'
			И в поле с именем 'ВКМ_ВремяНачалаРабот' я ввожу текст '12:00:00'
			И в поле с именем 'ВКМ_ВремяОкончанияРабот' я ввожу текст '14:00:00'
			И в поле с именем 'ВКМ_ОписаниеПроблемы' я ввожу текст 'Что то нажал и все сломалось'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И поле с именем "Номер" заполнено Тогда
				И я запоминаю значение поля с именем "Номер" как "$НомерДокумента1$"
			И поле с именем "Дата" заполнено Тогда
			И я запоминаю значение поля с именем "Дата" как "$ДатаДокумента1$"
			Тогда открылось окно 'Обслуживание клиента * от *'
			И Я закрываю окно 'Обслуживание клиента * от *'
		Тогда таблица "Список" содержит строки:
				| 'Номер'     | 'Договор' | 'Дата'                | 'Клиент'                     | 'Специалист'   |
				| '$НомерДокумента1$' | 'Аб-Тл-1' | '$ДатаДокумента1$' | 'Театрол'                    | 'Икша И.И.'    |

*Я создаю второй документ "Обслуживание клиента"
	* Я открываю форму списка документа "Обслуживание клиентов"
		И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживание клиентов'
		Тогда открылось окно 'Обслуживание клиентов'
		* Я создаю новый документ "Обслуживание клиента"
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Обслуживание клиента (создание)'
			И из выпадающего списка с именем "ВКМ_Клиент" я выбираю точное значение 'Парус'
			И из выпадающего списка с именем "ВКМ_Договор" я выбираю точное значение 'Аб-Пс-1'
			И из выпадающего списка с именем "ВКМ_Специалист" я выбираю точное значение 'Икша И.И.'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаПроведенияРабот"
			И в поле с именем 'ВКМ_ДатаПроведенияРабот' я ввожу текст '31.05.2024'
			И в поле с именем 'ВКМ_ВремяНачалаРабот' я ввожу текст '12:00:00'
			И в поле с именем 'ВКМ_ВремяОкончанияРабот' я ввожу текст '12:30:00'
			И в поле с именем 'ВКМ_ОписаниеПроблемы' я ввожу текст 'Что то нажал и все сломалось'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			И поле с именем "Номер" заполнено Тогда
				И я запоминаю значение поля с именем "Номер" как "$НомерДокумента2$"
		И поле с именем "Дата" заполнено Тогда
			И я запоминаю значение поля с именем "Дата" как "$ДатаДокумента2$"
			Тогда открылось окно 'Обслуживание клиента * от *'
			И Я закрываю окно 'Обслуживание клиента * от *'
		Тогда таблица "Список" содержит строки:
			| 'Номер'     | 'Договор' | 'Дата'                | 'Клиент'                     | 'Специалист'   |
			| '$НомерДокумента2$' | 'Аб-Пс-1' | '$ДатаДокумента2$' | 'Парус'                      | 'Икша И.И.'    |
		
		
		
				



