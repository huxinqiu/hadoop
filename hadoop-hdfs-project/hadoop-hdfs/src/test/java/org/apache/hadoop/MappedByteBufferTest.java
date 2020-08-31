package org.apache.hadoop;

import org.apache.commons.io.IOUtils;
import org.apache.hadoop.io.nativeio.NativeIO;
import org.junit.Test;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

public class MappedByteBufferTest {

    private final String path = "/home/hu/Documents/Programming/bigdata/Hadoop+2.X+HDFS源码剖析.pdf";

    @Test
    public void testMmap() {
        FileInputStream fIn = null;
        FileChannel fileChannel = null;
        MappedByteBuffer mmap = null;
        try {
            fIn = new FileInputStream(path);
            fileChannel = fIn.getChannel();
            byte[] bs = new byte[200 * 1024 * 1024];
            long start = System.currentTimeMillis();
            mmap = fileChannel.map(FileChannel.MapMode.READ_ONLY,
                    0, fileChannel.size());
            mmap.flip();
            while (mmap.remaining() > 0) {
                mmap.get(bs);
            }
            long end = System.currentTimeMillis();
            System.out.println(bs.length);
            System.out.println((end - start) / 1000.0 + " s");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            IOUtils.closeQuietly(fIn);
            IOUtils.closeQuietly(fileChannel);
            if (null != mmap) {
                NativeIO.POSIX.munmap(mmap);
            }
        }
    }

    @Test
    public void testBufferedInputStream() {
        FileInputStream fIn = null;
        BufferedInputStream bIn = null;
        try {
            fIn = new FileInputStream(path);
            bIn = new BufferedInputStream(fIn);
            byte[] bs = new byte[200 * 1024 * 1024];
            int bytesRead = 0;
            long start = System.currentTimeMillis();
            while ((bytesRead = bIn.read(bs)) != -1) {
                System.out.println(bs.length);
            }
            long end = System.currentTimeMillis();
            System.out.println((end - start) / 1000.0 + " s");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != bIn) {
                    bIn.close();
                }
                if (null != fIn) {
                    fIn.close();
                }
            } catch (IOException ignored) {}
        }
    }
}
