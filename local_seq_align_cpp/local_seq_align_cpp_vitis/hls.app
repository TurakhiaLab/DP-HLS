<project xmlns="com.autoesl.autopilot.project" top="seq_align_multiple" name="local_seq_align_cpp_vitis">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="../../src/seq_align_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/seq_align.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/seq_align.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/params.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="local_seq_align_cpp_vitis" status="active"/>
    </solutions>
</project>

