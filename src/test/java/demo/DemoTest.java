package demo;

/**
 * DemoTest
 *
 * @author weigang.lu
 * @date 2016/1/27
 */
public class DemoTest {
    private String string;

    private int num;

    private char char1;

    private DemoTest demoTest;

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public char getChar1() {
        return char1;
    }

    public void setChar1(char char1) {
        this.char1 = char1;
    }

    public DemoTest getDemoTest() {
        return demoTest;
    }

    public void setDemoTest(DemoTest demoTest) {
        this.demoTest = demoTest;
    }

    public DemoTest() {
    }

    public static void main(String[] args) {
        DemoTest demoTest = null;
        DemoTest demoTest1 = new DemoTest();
        System.out.println("demoTest="+demoTest);
        System.out.println("demoTest1="+demoTest1);
    }
}
