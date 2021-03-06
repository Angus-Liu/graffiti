package chapter09;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.embedded.EmbeddedChannel;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * @author Angus
 * @date 2019/5/5
 */
public class AbsIntegerEncoderTest {

    @Test
    public void TestEncoded() {
        ByteBuf buf = Unpooled.buffer();
        for (int i = 0; i < 10; i++) {
            buf.writeInt(i * -1);
        }

        EmbeddedChannel channel = new EmbeddedChannel(new AbsIntegerEncoder());
        assertTrue(channel.writeOutbound(buf));
        assertTrue(channel.finish());

        for (int i = 0; i < 10; i++) {
            assertEquals(Integer.valueOf(i), channel.readOutbound());
        }

        assertNull(channel.readOutbound());
    }

}