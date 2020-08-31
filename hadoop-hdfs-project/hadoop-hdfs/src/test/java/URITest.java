import com.google.common.base.Preconditions;
import org.apache.hadoop.util.StringUtils;
import org.junit.Test;

import java.net.URI;
import java.net.URISyntaxException;

public class URITest {

    @Test
    public void getAuthorityTest() throws URISyntaxException {
        String uriStr = "qjournal://hadoop-slave02:8485;" +
                "hadoop-slave03:8485;hadoop-slave04:8485/testcluster";
        URI uri = new URI(uriStr);
        String authority = uri.getAuthority();
        System.out.println("authority: " + authority);
        String[] parts = StringUtils.split(authority, ';');
        for (int i = 0; i < parts.length; i++) {
            System.out.println("part[" + i + "]: " + parts[i].trim());
        }

        String path = uri.getPath();
        System.out.println("path: " + path);
        System.out.println("journalId: " + path.substring(1));
    }
}
