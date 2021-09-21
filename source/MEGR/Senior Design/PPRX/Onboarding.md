![Overview of PPRX](!imgdir/0845402e7f3c3030f72f06b015e8c5b132bb1a2a.jpg)


!sfdp(diagram)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    digraph {
        concentrate=true;
        overlap=false;
        splines = true;
        "File" -> "Circular Buffer"
        "Circular Buffer" -> "PPRX"
        "Estimator" -> "PPRX"
        "Estimator" -> "TX"
        "TX" -> "PPRX"
        "Bank" -> "PPRX"
        "Bank" -> "Circular Buffer"
        "Config Generator" -> "Bank"
        "Config Generator" -> "Channel"
        "Factor Classes" -> "Channel"
        "Factor Classes" -> "Bank"
        "Signal Type" -> "Channel"
        "FFT Acquisition" -> "Channel"
        "Code Generator" -> "Channel"
        "Carrier Generator" -> "Channel"
        "Memory Manager" -> "Channel"
        "Symbol Processor" -> "Channel"
        "DLL" -> "Channel"
        "PLL" -> "Channel"
        "FLL" -> "Channel"
        "TxDAT" -> "Channel"
        "Navigation Message" -> "TxDAT"
        "Channel" -> "Bank"
    }
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~