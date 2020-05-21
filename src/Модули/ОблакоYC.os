#Использовать "../internal"

// Возвращает список подсетей
//
Процедура ПолучитьСписокПодсетей() Экспорт
	Команда = "yc vpc subnet list";
	Сообщить(ИсполнительКоманд.ВыполнитьКоманду(Команда));
КонецПроцедуры

// Возвращает список публичных образов
//
Процедура ПолучитьСписокПубличныхОбразов() Экспорт
	Команда = "yc compute image list --folder-id standard-images";
	Сообщить(ИсполнительКоманд.ВыполнитьКоманду(Команда));
КонецПроцедуры

// Возвращает список виртуальных машин
//
Процедура ПолучитьСписокВиртуальныхМашин() Экспорт
	Команда = "yc compute instance list";
	Сообщить(ИсполнительКоманд.ВыполнитьКоманду(Команда));
КонецПроцедуры