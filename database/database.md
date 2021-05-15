按照规范的设计方法，一个完整的数据库设计一般分为以下六个阶段：
**需求分析**：分析用户的需求，包括数据、功能和性能需求；
**概念结构设计**：主要采用E-R模型进行设计，包括画E-R图；
**逻辑结构设计**：通过将E-R图转换成表，实现从E-R模型到关系模型的转换；
**数据库物理设计**：主要是为所设计的数据库选择合适的存储结构和存取路径；
**数据库的实施**：包括编程、测试和试运行；
**数据库运行与维护**：系统的运行与数据库的日常维护。

![img](https://uploadfiles.nowcoder.com/images/20190313/633565650_1552407233070_C81C38DF0A0880AE2C2114BCB355CAD5)

### 常见的数据模型：概念模型，逻辑模型，物理模型

## SQL 关键字

| 关键词                                                       | 描述                                                         |
| :----------------------------------------------------------- | :----------------------------------------------------------- |
| [ADD](https://www.begtut.com/sql/sql-ref-add.html)           | 在现有表中添加列                                             |
| [ADD CONSTRAINT](https://www.begtut.com/sql/sql-ref-add-constraint.html) | 在已创建表之后添加约束                                       |
| [ALTER](https://www.begtut.com/sql/sql-ref-alter.html)       | 添加，删除或修改表中的列，或更改表中列的数据类型             |
| [ALTER COLUMN](https://www.begtut.com/sql/sql-ref-alter-column.html) | 更改表中列的数据类型                                         |
| [ALTER TABLE](https://www.begtut.com/sql/sql-ref-alter-table.html) | 添加，删除或修改表中的列                                     |
| [ALL](https://www.begtut.com/sql/sql-ref-all.html)           | 如果所有子查询值满足条件，则返回 true                        |
| [AND](https://www.begtut.com/sql/sql-ref-and.html)           | 仅包括两个条件都为真的行                                     |
| [ANY](https://www.begtut.com/sql/sql-ref-any.html)           | 如果任何子查询值满足条件，则返回 true                        |
| [AS](https://www.begtut.com/sql/sql-ref-as.html)             | 使用别名重命名列或表                                         |
| [ASC](https://www.begtut.com/sql/sql-ref-asc.html)           | 按升序对结果集进行排序                                       |
| [BACKUP DATABASE](https://www.begtut.com/sql/sql-ref-backup-database.html) | 创建现有数据库的备份                                         |
| [BETWEEN](https://www.begtut.com/sql/sql-ref-between.html)   | 选择给定范围内的值                                           |
| [CASE](https://www.begtut.com/sql/sql-ref-case.html)         | 根据条件创建不同的输出                                       |
| [CHECK](https://www.begtut.com/sql/sql-ref-check.html)       | 限制可以放置在列中的值的约束                                 |
| [COLUMN](https://www.begtut.com/sql/sql-ref-column.html)     | 更改列的数据类型或删除表中的列                               |
| [CONSTRAINT](https://www.begtut.com/sql/sql-ref-constraint.html) | 添加或删除约束                                               |
| [CREATE](https://www.begtut.com/sql/sql-ref-create.html)     | 创建数据库，索引，视图，表或过程                             |
| [CREATE DATABASE](https://www.begtut.com/sql/sql-ref-create-database.html) | 创建一个新的 SQL 数据库                                      |
| [CREATE INDEX](https://www.begtut.com/sql/sql-ref-create-index.html) | 在表上创建索引（允许重复值）                                 |
| [CREATE OR REPLACE VIEW](https://www.begtut.com/sql/create-or-replace-view.html) | 更新视图                                                     |
| [CREATE TABLE](https://www.begtut.com/sql/sql-ref-create-table.html) | 在数据库中创建一个新表                                       |
| [CREATE PROCEDURE](https://www.begtut.com/sql/sql-ref-create-procedure.html) | 创建存储过程                                                 |
| [CREATE UNIQUE INDEX](https://www.begtut.com/sql/ref-create-unique-index.html) | 在表上创建唯一索引（无重复值）                               |
| [CREATE VIEW](https://www.begtut.com/sql/sql-ref-create-view.html) | 根据 SELECT 语句的结果集创建视图                             |
| [DATABASE](https://www.begtut.com/sql/sql-ref-database.html) | 创建或删除 SQL 数据库                                        |
| [DEFAULT](https://www.begtut.com/sql/sql-ref-default.html)   | 为列提供默认值的约束                                         |
| [DELETE](https://www.begtut.com/sql/sql-ref-delete.html)     | 从表中删除行                                                 |
| [DESC](https://www.begtut.com/sql/sql-ref-desc.html)         | 按降序对结果集进行排序                                       |
| [DISTINCT](https://www.begtut.com/sql/sql-ref-select-distinct.html) | 仅选择不同（不同）的值                                       |
| [DROP](https://www.begtut.com/sql/sql-ref-drop.html)         | 删除列，约束，数据库，索引，表或视图                         |
| [DROP COLUMN](https://www.begtut.com/sql/sql-ref-drop-column.html) | 删除表中的列                                                 |
| [DROP CONSTRAINT](https://www.begtut.com/sql/sql-ref-drop-constraint.html) | 删除 UNIQUE，PRIMARY KEY，FOREIGN KEY 或 CHECK 约束          |
| [DROP DATABASE](https://www.begtut.com/sql/sql-ref-drop-database.html) | 删除现有 SQL 数据库                                          |
| [DROP DEFAULT](https://www.begtut.com/sql/sql-ref-drop-default.html) | 删除 DEFAULT 约束                                            |
| [DROP INDEX](https://www.begtut.com/sql/sql-ref-drop-index.html) | 删除表中的索引                                               |
| [DROP TABLE](https://www.begtut.com/sql/sql-ref-drop-table.html) | 删除数据库中的现有表                                         |
| [DROP VIEW](https://www.begtut.com/sql/sql-ref-drop-view.html) | 删除视图                                                     |
| [EXEC](https://www.begtut.com/sql/sql-ref-exec.html)         | 执行存储过程                                                 |
| [EXISTS](https://www.begtut.com/sql/sql-ref-exists.html)     | 测试子查询中是否存在任何记录                                 |
| [FOREIGN KEY](https://www.begtut.com/sql/sql-ref-foreign-key.html) | 约束，是用于将两个表链接在一起的键                           |
| [FROM](https://www.begtut.com/sql/sql-ref-from.html)         | 指定要从中选择或删除数据的表                                 |
| [FULL OUTER JOIN](http://localhost/sql_https://www.begtut.com/sql/ref-full-outer-join.html) | 当左表或右表中存在匹配时，返回所有行                         |
| [GROUP BY](https://www.begtut.com/sql/sql-ref-group-by.html) | 对结果集进行分组（与聚合函数一起使用：COUNT，MAX，MIN，SUM，AVG） |
| [HAVING](https://www.begtut.com/sql/sql-ref-having.html)     | 使用聚合函数代替 WHERE                                       |
| [IN](https://www.begtut.com/sql/sql-ref-in.html)             | 允许您在 WHERE 子句中指定多个值                              |
| [INDEX](https://www.begtut.com/sql/sql-ref-index.html)       | 创建或删除表中的索引                                         |
| [INNER JOIN](https://www.begtut.com/sql/sql-ref-inner-join.html) | 返回两个表中具有匹配值的行                                   |
| [INSERT INTO](https://www.begtut.com/sql/sql-ref-insert-into.html) | 在表中插入新行                                               |
| [INSERT INTO SELECT](https://www.begtut.com/sql/sql-ref-insert-into-select.html) | 将数据从一个表复制到另一个表中                               |
| [IS NULL](https://www.begtut.com/sql/sql-ref-is-null.html)   | 测试空值                                                     |
| [IS NOT NULL](http://localhost/sql_https://www.begtut.com/sql/ref-is-not-null.html) | 测试非空值                                                   |
| [JOIN](https://www.begtut.com/sql/sql-ref-join.html)         | 关联表                                                       |
| [LEFT JOIN](https://www.begtut.com/sql/sql-ref-left-join.html) | 返回左表中的所有行，以及右表中的匹配行                       |
| [LIKE](https://www.begtut.com/sql/sql-ref-like.html)         | 在列中搜索指定的模式                                         |
| [LIMIT](https://www.begtut.com/sql/sql-ref-top.html)         | 指定要在结果集中返回的记录数                                 |
| [NOT](https://www.begtut.com/sql/sql-ref-not.html)           | 仅包括条件不为真的行                                         |
| [NOT NULL](https://www.begtut.com/sql/sql-ref-not-null.html) | 强制列不接受 NULL 值的约束                                   |
| [OR](https://www.begtut.com/sql/sql-ref-or.html)             | 包括条件为真的行                                             |
| [ORDER BY](https://www.begtut.com/sql/sql-ref-order-by.html) | 按升序或降序对结果集进行排序                                 |
| [OUTER JOIN](https://www.begtut.com/sql/sql-ref-full-outer-join.html) | 当左表或右表中存在匹配时，返回所有行                         |
| [PRIMARY KEY](https://www.begtut.com/sql/sql-ref-primary-key.html) | 唯一标识数据库表中每条记录的约束                             |
| [PROCEDURE](https://www.begtut.com/sql/sql-ref-create-procedure.html) | 存储过程                                                     |
| [RIGHT JOIN](https://www.begtut.com/sql/sql-ref-right-join.html) | 返回右表中的所有行以及左表中的匹配行                         |
| [ROWNUM](https://www.begtut.com/sql/sql-ref-top.html)        | 指定要在结果集中返回的记录数                                 |
| [SELECT](https://www.begtut.com/sql/sql-ref-select.html)     | 从数据库中选择数据                                           |
| [SELECT DISTINCT](https://www.begtut.com/sql/sql-ref-select-distinct.html) | 仅选择不同（不同）的值                                       |
| [SELECT INTO](https://www.begtut.com/sql/sql-ref-select-into.html) | 将数据从一个表复制到新表中                                   |
| [SELECT TOP](https://www.begtut.com/sql/sql-ref-top.html)    | 指定要在结果集中返回的记录数                                 |
| [SET](https://www.begtut.com/sql/sql-ref-set.html)           | 指定应在表中更新的列和值                                     |
| [TABLE](https://www.begtut.com/sql/sql-ref-table.html)       | 创建表，或添加，删除或修改表中的列，或删除表中的表或数据     |
| [TOP](https://www.begtut.com/sql/sql-ref-top.html)           | 指定要在结果集中返回的记录数                                 |
| [TRUNCATE TABLE](https://www.begtut.com/sql/sql-ref-drop-table.html) | 删除表中的数据，但不删除表本身                               |
| [UNION](https://www.begtut.com/sql/sql-ref-union.html)       | 合并两个或多个 SELECT 语句的结果集（仅限不同的值）           |
| [UNION ALL](https://www.begtut.com/sql/sql-ref-union.html)   | 合并两个或多个 SELECT 语句的结果集（允许重复值）             |
| [UNIQUE](https://www.begtut.com/sql/sql-ref-unique.html)     | 一种约束，用于确保列中的所有值都是唯一的                     |
| [UPDATE](https://www.begtut.com/sql/sql-ref-update.html)     | 更新表中的现有行                                             |
| [VALUES](https://www.begtut.com/sql/sql-ref-values.html)     | 指定 INSERT INTO 语句的值                                    |
| [VIEW](https://www.begtut.com/sql/sql-ref-view.html)         | 创建，更新或删除视图                                         |
| [WHERE](https://www.begtut.com/sql/sql-ref-where.html)       | 筛选结果集以仅包括满足指定条件的记录                         |

## 一些最重要的 SQL 命令

- **SELECT** - 从数据库中提取数据
- **UPDATE** - 更新数据库中的数据
- **DELETE** - 从数据库中删除数据
- **INSERT INTO** - 向数据库中插入新数据
- **CREATE DATABASE** - 创建新数据库
- **ALTER DATABASE** - 修改数据库
- **CREATE TABLE** - 创建新表
- **ALTER TABLE** - 变更（改变）数据库表
- **DROP TABLE** - 删除表
- **CREATE INDEX** - 创建索引（搜索键）
- **DROP INDEX** - 删除索引





# 数据库设计

1. ### 需求分析

2. ### 概念结构设计

3. ### 逻辑结构设计

4. ### 物理结构设计

5. ### 数据库实施

6. ### 数据库运行和维护

