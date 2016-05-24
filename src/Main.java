import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class Main {
    class T {
        public int value;

        public T(int value) {
            this.value = value;
        }

        public int getValue() {
            return value;
        }

        public void setValue(int value) {
            this.value = value;
        }
    }

    public void test() {
        List<T> list = new ArrayList<>();
        list.add(new T(1));

        for(T t : list) {
            t.setValue(2);
        }
        for(T t : list) {
            System.out.print(t.getValue() + "\t");
        }
    }

    public static void main(String[] args) {
        Main m = new Main();
        m.test();

        LinkedList<Integer> list = new LinkedList<>();
    }

}