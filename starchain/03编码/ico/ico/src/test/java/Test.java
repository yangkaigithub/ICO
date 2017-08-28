import org.apache.commons.net.ntp.TimeStamp;

/**
 * Created by Harry on 2017/8/1.
 */
public class Test {
    public static void main(String[] args) {
        TimeStamp timeStamp = new TimeStamp(System.nanoTime());
        System.out.println(timeStamp.getDate().toString());

    }
}
