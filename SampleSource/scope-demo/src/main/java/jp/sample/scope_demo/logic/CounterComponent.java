package jp.sample.scope_demo.logic;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("singleton")
public class CounterComponent {
	private int counter = 0;
	
	public int getCounter() {
		return ++counter;
	}
}
