#Использовать "../internal"
#Использовать logos

Перем Лог;

// Читает токен OAuthTken
//
// Параметры:
//  ПутьКOAuthTken  - Строка - Полный путь до файла с OAuth-token
//
// Возвращаемое значение:
//  Строка  - Строковое представление OAuthTken
//
Функция ПрочитатьOAuthTken(ПутьКOAuthTken) Экспорт
	Попытка
		ЧтениеТекста = Новый ЧтениеТекста();
		ЧтениеТекста.Открыть(ПутьКOAuthTken);
		OAuthTken = ЧтениеТекста.ПрочитатьСтроку();
		Лог.Информация("Токен прочитан");
	Исключение
		Лог.Ошибка("Токен не прочитан");
	КонецПопытки;
	Возврат OAuthTken;
КонецФункции

// Выполняет подключение по токену
//
// Параметры:
//  СтрокаOAuthTken  - Строка  - OAuthTken
//
Процедура ВыполнитьПодключение(OAuthTken) Экспорт
	Попытка
		Команда = СтрШаблон("yc config set token %1", OAuthTken);
		ИсполнительКоманд.ВыполнитьКоманду(Команда);
		Лог.Информация("Подключение установлено");
	Исключение
		Лог.Ошибка("Подключение не установлено");
	КонецПопытки;
КонецПроцедуры

Лог = Логирование.ПолучитьЛог("oscript.lib.vporter");
Лог.УстановитьУровень(УровниЛога.Информация);



