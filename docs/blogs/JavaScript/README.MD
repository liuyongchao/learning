# JavaScript

- ES6部分

  - export

    - 定义：从模块中导出函数、对象、原始值

    - 语法：13中语法规则

```js
export { name1, name2, …, nameN };
export { variable1 as name1, variable2 as name2, …, nameN };
export let name1, name2, …, nameN; // also var
export let name1 = …, name2 = …, …, nameN; // also var, const
export function FunctionName() {...}
export class ClassName {...}

export default expression;
export default function (…) { … } // also class, function*
export default function name1(…) { … } // also class, function*
export { name1 as default, … };

export * from …;
export { name1, name2, …, nameN } from …;
export { import1 as name1, import2 as name2, …, nameN } from …;
``` 

    - 作用：导出的标识符用来被其他脚本import导入

    - 注意：
        
        >可以用任何名称导入默认导出
        >一个文件只能有一个默认导出
        >export * from ...;不会导出已经导入的默认导出
        >如果需要导出导入的默认导出用export default mod;

```js
export default k = 12;//in file test.js
import m from './test'
console.log(m);//12
```

    - 使用默认导出
    >如果我们要导出一个值或模块中的返回值，就可以使用默认导出
    >不能使用var，let或const作为默认导出


