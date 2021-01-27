(https://www.srcml.org/about.html

#include "rotate.h"

// rotate three values
void rotate(int& n1, int& n2, int& n3)
{
  // copy original values
  int tn1 = n1, tn2 = n2, tn3 = n3;

  // move
  n1 = tn3;
  n2 = tn1;
  n3 = tn2;
}

and the corresponding srcML version, rotate.xml:

<unit xmlns="http://www.srcML.org/srcML/src" xmlns:cpp="http://www.srcML.org/srcML/cpp" revision="1.0.0" language="C++" filename="src/rotate.cpp">
<cpp:include>#<cpp:directive>include</cpp:directive> <cpp:file>"rotate.h"</cpp:file></cpp:include>

<comment type="line">// rotate three values</comment>
<function><type><name>void</name></type> <name>rotate</name><parameter_list>(<parameter><decl><type><name>int</name><modifier>&amp;</modifier></type> <name>n1</name></decl></parameter>, <parameter><decl><type><name>int</name><modifier>&amp;</modifier></type> <name>n2</name></decl></parameter>, <parameter><decl><type><name>int</name><modifier>&amp;</modifier></type> <name>n3</name></decl></parameter>)</parameter_list>
<block>{<block_content>
  <comment type="line">// copy original values</comment>
  <decl_stmt><decl><type><name>int</name></type> <name>tn1</name> <init>= <expr><name>n1</name></expr></init></decl>, <decl><type ref="prev"/><name>tn2</name> <init>= <expr><name>n2</name></expr></init></decl>, <decl><type ref="prev"/><name>tn3</name> <init>= <expr><name>n3</name></expr></init></decl>;</decl_stmt>

  <comment type="line">// move</comment>
  <expr_stmt><expr><name>n1</name> <operator>=</operator> <name>tn3</name></expr>;</expr_stmt>
  <expr_stmt><expr><name>n2</name> <operator>=</operator> <name>tn1</name></expr>;</expr_stmt>
  <expr_stmt><expr><name>n3</name> <operator>=</operator> <name>tn2</name></expr>;</expr_stmt>
</block_content>}</block></function>
</unit>
)

(can use NLU to annotate text, maybe even ies to
 automatically (probably not though), certainly entity-resolution
 and entity-database)

((pip install FoLiA-tools)
 https://pypi.org/project/FoLiA-tools/

 process all the descriptions and data files related to BlackArch
 tools, so like if something takes a file containing a list of IP
 addresses, you parse it into:
 <IP-Address>132.53.153.32</IP-Address>
 <IP-Address>132.53.153.33</IP-Address>
 <IP-Address>132.53.153.34</IP-Address>
 <IP-Address>132.53.153.35</IP-Address> ...

 You use IAEC to parse these resources.  I forget the point of
 processing the input and output to programs to BlackArch, maybe
 it is to compose functions, i.e. one file outputs IPs and
 another takes them as input.  Service composition.  But it's a
 type system.  A hierarchy.  Oh maybe it was for doing semantic
 enrichment of texts describing the programs.  For instance, if
 the description mentions "IP Address".  This is for the purpose
 of taking a list of program descriptions and making meaningful
 connections between them, to help us more quickly grok all of
 the systems.  Find what you are looking for more quickly.  Make
 sense of the set of all of the programs.
 
 (see "An Ontology of NLP Services" for some more ideas that look
  potentially related. ~/Klein2004ONS.pdf)

2020-05-10 21:05:48 <aindilis> say you have a file containing list of IP
      addresses, i.e. "133.135.32.156\n133.135.32.157\n133.135.32.158\n"...
2020-05-10 21:06:01 <aindilis> it would using some kind of XML inline
      annotations produce:
2020-05-10 21:06:31 <aindilis>
      "<ip-address>133.135.32.156</ip-address>\n<ip-address>133.135.32.157</ip-address>\n<ip-address>133.135.32.158</ip-address>\n"
2020-05-10 21:06:52 <aindilis> or like if you parsed the output of `ls` for
      instance
2020-05-10 21:07:15 <aindilis> you would invariably have annotations like
      <file-size/> and <filename/> etc
2020-05-10 21:07:51 <aindilis> think Text Encoding Initiative combined with
      Universal Parsing combined with Ultrafine Entity-Typing
2020-05-10 21:08:31 <aindilis> the reason I want these annotations is to
      dynamically compose services from commands
2020-05-10 21:09:12 <aindilis> like `nmap` affords an IP address, so you could
      for instance iterate over those IPs in that file and produce output from
      nmap
2020-05-10 21:09:30 <aindilis> you can see that `nmap` affords IP address by
      parsing shell history for instance
2020-05-10 21:09:40 <aindilis> or by processing the man page, etc
2020-05-10 21:09:45 <aindilis> or -h --help etc

 )
