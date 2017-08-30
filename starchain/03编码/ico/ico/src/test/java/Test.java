import com.starchain.util.Mallutil;
import org.apache.commons.net.ntp.TimeStamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

/**
 * Created by Harry on 2017/8/1.
 */
public class Test implements Runnable{
    static int i = 0;


    public static void main(String[] args) {
        ThreadPoolTaskExecutor threadPoolTaskExecutor = new ThreadPoolTaskExecutor();

        for(int j=0;j<10;j++){
            new Thread(new Test()).start();
       }

    }

    @Override
    public void run() {
        try {

            Thread.sleep(100000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(i++);
    }
}
