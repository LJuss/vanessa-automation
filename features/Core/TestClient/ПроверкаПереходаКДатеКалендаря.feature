# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA52_Работать_с_UI_прочее

@IgnoreOn82Builds
@IgnoreOnOFBuilds


@tree


Функционал: Проверка перехода к дате в поля календаря

	Как Разработчик я хочу
	Чтобы я мог перейти к дате в поле календаря
	Для того чтобы я мог использовать такие шаги в своих сценариях



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	

Сценарий: Переход к дате в поле календаря
	Когда В панели разделов я выбираю "Основная"
	И     В панели функций я выбираю "Справочник3"
	Тогда открылось окно "Справочник3"
	И     я нажимаю на кнопку "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И Я запоминаю значение выражения "Дата(1981,04,08)" в переменную "ТекДат"
	И     у поля "Календарь" я перехожу к дате "$ТекДат$"
	И     у поля "Календарь" я перехожу к дате 08.04.1981