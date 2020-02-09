package net.lele.model;
import lombok.Data;

@Data
public class Searching {
    int c = 0;  // classs
    int recordCount;

    public String getQueryString() {
        return String.format("c=%d", c);
    }
}
