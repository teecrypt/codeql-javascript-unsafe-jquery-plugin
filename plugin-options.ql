


import javascript
import DataFlow

from FunctionNode fnRead
where jquery().getAPropertyRead("fn").getAPropertySource() = fnRead
select fnRead, fnRead.getLastParameter()