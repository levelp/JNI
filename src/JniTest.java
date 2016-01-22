/**
 * Создаем обычный класс на JAVA, но тот метод, который должен использовать dll описываем как native.
 */
public class JniTest {
  static {
    // Вызов, который загружает нашу dll
    System.loadLibrary("JNI_DLL");
  }

  // обращаем внимание на слово native
  public native int showString(String message);
}