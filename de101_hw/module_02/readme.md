# Module02 practice

## SQL запросы
Скрипты создания таблиц:
1. [Orders](https://github.com/tdutanton/data-engineering/blob/master/de101_hw/module_02/create_orders.sql)
2. [People](https://github.com/tdutanton/data-engineering/blob/master/de101_hw/module_02/create_people.sql)
3. [Returns](https://github.com/tdutanton/data-engineering/blob/master/de101_hw/module_02/create_returns.sql)

Наполнение таблиц данными сделано при помощи:
```
copy orders
from '...orders.csv'
delimiter ';'
csv header
```

[Скрипты](https://github.com/tdutanton/data-engineering/blob/master/de101_hw/module_02/queries_hw.sql) для ответа на вопросы, рассмотренные при создании дашбордов в Модуле01.
