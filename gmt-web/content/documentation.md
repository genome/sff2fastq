# NAME

`sff2fastq` - extract 454 Genome Sequencer reads from a SFF file and convert them into a FASTQ formatted output

# SYNOPSIS

<pre class="terminal">
sff2fastq [options] &lt;sff_file&gt;
-h                  This help message   
-v                  Program and version information
-n                  Output the untrimmed sequence
-o <fastq_file>     Desired fastq output file. If not specified, 
                         defaults to stdout
</pre>

# NOTES

This has been successfully compiled on Linux/Ubuntu 8.04, 9.10, & 10.04
workstations (both 32-bit and 64-bit machines), and on Mac OS X (version
10.5).  Compiling on other types of operating systems and architectures
has not been experimented upon.

The FASTQ output produced is of the [Sanger FASTQ
format](http://maq.sourceforge.net/fastq.shtml).

Without any given options the default approach is to output trimmed
sequence and quality values.  This is similar in nature to the sff tools
produced by 454 Life Sciences/Roche.

# AUTHOR

`sff2fastq` was written by Indraniel Das <idas@wustl.edu>. 

# DISCLAIMER

This software is provided "as is" without warranty of any kind.

# COPYRIGHT

`sff2fastq` is free software, distributed under the terms of the [GNU GPL v3 or later](http://gnu.org/licenses/gpl.html).
