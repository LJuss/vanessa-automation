# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA26_Макеты_для_проверки_test_client
#language: ru

@IgnoreOnCIMainBuild
@tree

Функциональность: Для проверки шага я копирую текущий профиль



Сценарий: Для проверки шага я копирую текущий профиль 


	Затем Я копирую текущий профиль TestClient с установкой параметров
					| 'Синоним'          | 'Имя подключения'        | 'Логин'     |  'Пароль'     |
					| 'ТестовыйСиноним'  | 'ТестовоеИмяПодключения' | 'ТестЛогин' |  'ТестПароль' |