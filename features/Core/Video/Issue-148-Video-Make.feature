# language: ru
# encoding: utf-8
#parent ua:
@UA40_проверять_формирование_видеоинструкций
#parent uf:
@UF6_текстовые_и_видео_инструкции

@tree
@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOnWeb
@Video


Функционал: Проверка формирования файла видео

Как разработчик
Я хочу чтобы корректно формировался файл видео под фиче
Чтобы я мог видеть результат работы сценариев в формате видео

	#[autodoc.groupsteps] В интерфейсе я выбираю Справочник1 и Справочник2 ["" + 11]
	#[autodoc.donotscale]
	#[autodoc.ignorestep]
	#[autodoc.text] В интерфейсе \[я\] выбираю %2 и %1 ["" + ТекущаяДата()]


Контекст:
	Дано Я убедился что работает звуковой движок по созданию TTS
	Дано Я открываю VanessaAutomation в режиме TestClient
	И я убедился что каталог указанный в реквизите "ЗаписьВидеоКаталогДляВременныхФайлов" существует или создал его
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиФормированияВидео"

Сценарий: Проверка формирования видео
	
	Если Версия платформы ">=" "8.3.12" Тогда
		И я устанавливаю максимальное время выполнения действия 300
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И В открытой форме я изменяю флаг "Создавать видеоинструкцию"
	И я устанавливаю флаг с именем 'ЗаписьВидеоФормироватьИнструкциюТипHTML'

	И в поле "Каталог видео инструкций" я указываю путь к относительному каталогу "tools\Video" и очищаю каталог
	И Я запоминаю значение выражения '$ПараметрКаталог$ + "\Video"' в переменную "ПараметрКаталог"
	
	Если поле с именем "ВерсияПоставки" имеет значение "standart" тогда
			И я перехожу к закладке с именем "ГруппаКаталогиБиблиотек"
			И В открытой форме я нажимаю на кнопку с именем "КаталогиБиблиотекДобавить"
			И я добавляю в библиотеки строку с стандартной библиотекой "Libraries"
	
	И Я заполняю настройки записи видео в TestClient
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И я очищаю каталог '$КаталогИнструментов$\tools\Video'
	И Я нажимаю на кнопку "Выполнить"
	И в течение 800 секунд в каталоге заданном в переменной контекста "ПараметрКаталог" появился файл "result.mp4"
	И в логе сообщений TestClient нет слова "ошибка"
	
	И Файл "$КаталогИнструментов$\tools\Video\HTML\result.html" существует
	
	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я нажимаю на кнопку с именем 'РазвернутьВсеСтрокиДереваСлужебный'
	И я перехожу к закладке с именем "ГруппаЗапускТестов"

	Тогда таблица "ДеревоТестов" стала равной:
		| 'Наименование'                                          | 'Статус'  |
		| 'ФичаДляПроверкиФормированияВидео.feature'              | ''        |
		| 'Тестовая фича, проверяющая генерацию видео'            | ''        |
		| 'Контекст'                                              | ''        |
		| 'Дано я выполняю простой шаг контекста'                 | 'Success' |
		| 'И я выполняю код встроенного языка'                    | 'Success' |
		| '\| \'ОчиститьСообщения()\' \|'                         | ''        |
		| 'Выполнение первого    простого сценария'               | 'Success' |
		| 'Это верхний уровень дерева'                            | ''        |
		| 'Это второй уровень дерева'                             | ''        |
		| 'Когда я выполняю простой шаг'                          | 'Success' |
		| 'И видеовставка "Текст обратите       внимание Начало"' | 'Success' |
		| 'И видеовставка "Текст видеовставка Окончание"'         | 'Success' |
		| 'И я выполняю ещё простой шаг c параметром 1'           | 'Success' |
		| 'И текст субтитров "Текст субтитров"'                   | 'Success' |





