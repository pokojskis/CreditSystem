package domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class LoanParameters {

    private int installmentCount;
    private int amount;
}
