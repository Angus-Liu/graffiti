package set;

import org.junit.Test;
import util.FileOperation;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Angus
 * @date 2018/10/10
 */
public class BSTSetTest {

    @Test
    public void wordCount() {
        List<String> words = new ArrayList<>();
        System.out.println("A Tale of Two Cities");
        String file = this.getClass()
                .getClassLoader()
                .getResource("a-tale-of-two-cities.txt")
                .getFile();
        FileOperation.readFile(file, words);
        System.out.println("Total words: " + words.size());

        BSTSet<String> set = new BSTSet<>();
        for (String word : words) {
            set.add(word);
        }
        System.out.println("Total different size: " + set.getSize());
    }
}