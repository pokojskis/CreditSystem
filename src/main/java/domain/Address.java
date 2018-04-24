package domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Address {

    private String city;
    private String zipCode;
    private String street;
    private String houseNumber;
    private String localNumber;
    private String phoneNumber;
}
