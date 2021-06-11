import javascript
import DataFlow

predicate isSource(DataFlow::Node source) {
    exists(FunctionNode fnRead |
        jquery().getAPropertyRead("fn").getAPropertySource() = fnRead
        and source = fnRead.getLastParameter()
    )
}

from DataFlow::Node node
where isSource(node)
select node