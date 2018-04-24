package domain;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class LoanApplication {

    private Person person;
    private Address address;
    private LoanParameters parameters;
    private String number;
    private Date date;
}
