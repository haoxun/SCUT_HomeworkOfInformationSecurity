<TeXmacs|1.99.1>

<style|generic>

<\body>
  <doc-data|<doc-title|<with|font|kaku|<with|font|heiti|\<#4FE1\>\<#606F\>\<#5B89\>\<#5168\>\<#7B2C\>\<#4E09\>\<#6B21\>\<#5B9E\>\<#9A8C\>>>>>

  <section|<with|font|heiti|\<#4E3A\>\<#4E86\>\<#52A0\>\<#6DF1\>\<#5BF9\>RSA\<#7B97\>\<#6CD5\>\<#7684\>\<#7406\>\<#89E3\>\<#FF0C\>\<#6839\>\<#636E\>\<#5DF2\>\<#77E5\>\<#53C2\>\<#6570\>\<#FF1A\><math|p
  = 17, q = 11, e = 3,> <math|M = 19>\<#FF0C\>\<#624B\>\<#5DE5\>\<#8BA1\>\<#7B97\>\<#79C1\>\<#94A5\><math|d>\<#548C\>\<#5BF9\>\<#5E94\>\<#7684\>\<#5BC6\>\<#6587\>\<#FF0C\>\<#7136\>\<#540E\>\<#5BF9\>\<#5BC6\>\<#6587\>\<#8FDB\>\<#884C\>\<#89E3\>\<#5BC6\>\<#3002\>>>

  <paragraph|<\with|font|heiti>
    \<#7531\>\<#4E8E\><math|p, q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#53EF\>\<#5F97\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|n>|<cell|=>|<cell|p
      \<times\>q=187>>|<row|<cell|\<Phi\><around*|(|n|)>>|<cell|=>|<cell|<around*|(|p-1|)><around*|(|q-1|)>
      = 16 \<times\> 10 = 160>>>>
    </eqnarray*>
  </with>>

  <\paragraph>
    <\with|font|heiti>
      \<#56E0\>\<#4E3A\><math|e=3\<nocomma\>>\<#FF0C\><math|\<Phi\><around*|(|n|)>=160\<nocomma\>\<nocomma\>>\<#FF0C\><math|ed\<equiv\>
      1 <around*|(|mod \<Phi\><around*|(|n|)>|)>>\<#FF0C\>\<#53EF\>\<#5F97\><math|e>\<#6A21\>\<#53CD\>\<#5143\>\<#7D20\><math|d<with|mode|text|\<#7684\>\<#8868\>\<#8FBE\>\<#5F0F\>>>
    </with>

    <\eqnarray*>
      <tformat|<table|<row|<cell|3d -1>|<cell|=>|<cell|160k>>>>
    </eqnarray*>

    <with|font|heiti|\<#6C42\>\<#5F97\><math|d>\<#7684\>\<#53EF\>\<#884C\>\<#89E3\>\<#4E3A\><math|107>\<#3002\>>
  </paragraph>

  <paragraph|<\with|font|heiti>
    \<#7531\>\<#6B64\>\<#53EF\>\<#5F97\>\<#FF0C\>\<#52A0\>\<#5BC6\>\<#516C\>\<#94A5\>\<#4E3A\><math|<around*|(|n=187\<nocomma\>,q=3|)>>\<#FF0C\>\<#79C1\>\<#94A5\>\<#4E3A\><math|<around*|(|d=107,q=3|)>>\<#3002\>
  </with>>

  <\paragraph>
    <\with|font|heiti>
      \<#5BF9\>\<#4E8E\><math|M=19>\<#4EE5\>\<#53CA\>\<#516C\>\<#94A5\>\<#FF0C\>\<#6839\>\<#636E\>\<#52A0\>\<#5BC6\>\<#516C\>\<#5F0F\>

      <\eqnarray*>
        <tformat|<table|<row|<cell|m<rsup|e>>|<cell|\<equiv\>>|<cell|c
        <around*|(|mod n|)>>>>>
      </eqnarray*>

      <paragraph|\<#89E3\>\<#5F97\><math|c=6672>\<#3002\>>
    </with>
  </paragraph>

  <paragraph|<\with|font|heiti>
    \<#5BF9\>\<#4E8E\><math|c=6672>\<#4EE5\>\<#53CA\>\<#79C1\>\<#94A5\>\<#FF0C\>\<#6839\>\<#636E\>\<#89E3\>\<#5BC6\>\<#516C\>\<#5F0F\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|c<rsup|d> >|<cell|\<equiv\>>|<cell|m
      <around*|(|mod n|)>>>>>
    </eqnarray*>

    <paragraph|\<#6211\>\<#4EEC\>\<#5F88\>\<#96BE\>\<#76F4\>\<#63A5\>\<#6C42\>\<#89E3\><math|m>\<#FF0C\>\<#539F\>\<#56E0\>\<#5728\>\<#4E8E\><math|c<rsup|d>>\<#7684\>\<#6570\>\<#91CF\>\<#7EA7\>\<#8FC7\>\<#4E8E\>\<#5E9E\>\<#5927\>\<#3002\>\<#4E8E\>\<#6B64\>\<#FF0C\>\<#7531\>\<#4E8E\><math|n=p\<times\>q>\<#FF0C\>>

    \<#4E14\><math|p, q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5206\>\<#6CBB\>\<#7684\>\<#7B56\>\<#7565\>\<#964D\>\<#4F4E\>\<#6570\>\<#636E\>\<#89C4\>\<#6A21\>\<#3002\>\<#5047\>\<#8BBE\><math|x=6672<rsup|107>>\<#FF08\>\<#5373\>\<#4E3A\><math|m<rsup|e>>\<#FF09\>\<#FF0C\>

    \<#6839\>\<#636E\>\<#8D39\>\<#9A6C\>\<#5C0F\>\<#5B9A\>\<#7406\><math|a<rsup|p-1>\<equiv\>1<around*|(|mod
    p|)>>\<#FF0C\>\<#53EF\>\<#5F97\>

    <\eqnarray*>
      <tformat|<table|<row|<cell|x>|<cell|\<equiv\>>|<cell|8<around*|(|mod
      11|)>>>|<row|<cell|x>|<cell|\<equiv\>>|<cell|2<around*|(|mod 17|)>>>>>
    </eqnarray*>

    <paragraph|\<#4E0B\>\<#9762\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#63A8\>\<#5BFC\>\<#6240\>\<#5F97\>\<#6C42\>\<#51FA\><math|m>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|x \ >|<cell|=>|<cell|8
      \<noplus\>\<noplus\>+11k>>|<row|<cell|8+11k>|<cell|\<equiv\>>|<cell|2<around*|(|mod
      17|)>>>|<row|<cell|11k>|<cell|\<equiv\>>|<cell|11<around*|(|mod
      17|)>>>|<row|<cell|3\<times\>11k>|<cell|\<equiv\>>|<cell|3\<times\>11<around*|(|mod
      17|)>>>|<row|<cell|k>|<cell|\<equiv\>>|<cell|1<around*|(|mod
      17|)>>>|<row|<cell|k>|<cell|=>|<cell|1+17l>>|<row|<cell|x>|<cell|=>|<cell|8+11<around*|(|1+17l|)>>>|<row|<cell|x>|<cell|\<equiv\>>|<cell|19<around*|(|mod
      187|)>>>>>
    </eqnarray*>
  </with>>

  <section|<with|font|heiti|\<#7B80\>\<#8FF0\>\<#5BF9\>\<#79F0\>\<#52A0\>\<#5BC6\>\<#4F53\>\<#5236\>\<#548C\>\<#975E\>\<#5BF9\>\<#79F0\>\<#5BC6\>\<#7801\>\<#4F53\>\<#5236\>\<#7684\>\<#5404\>\<#81EA\>\<#7279\>\<#70B9\>\<#3002\>>>

  <paragraph|<with|font|heiti|\<#6700\>\<#76F4\>\<#89C2\>\<#7684\>\<#533A\>\<#522B\>\<#FF1A\>\<#5BF9\>\<#79F0\>\<#52A0\>\<#5BC6\>\<#4F53\>\<#7CFB\>\<#91C7\>\<#7528\>\<#516C\>\<#94A5\>\<#3001\>\<#79C1\>\<#94A5\>\<#5BF9\>\<#FF0C\>\<#975E\>\<#5BF9\>\<#79F0\>\<#52A0\>\<#5BC6\>\<#4F53\>\<#7CFB\>\<#91C7\>\<#7528\>\<#5355\>\<#4E00\>\<#5BC6\>\<#94A5\>\<#3002\>>>

  \;

  \;
</body>

<initial|<\collection>
</collection>>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-10|<tuple|9|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-11|<tuple|10|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-12|<tuple|11|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-13|<tuple|12|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-14|<tuple|13|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-15|<tuple|14|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-16|<tuple|2|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-17|<tuple|15|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-2|<tuple|1|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-3|<tuple|2|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-4|<tuple|3|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-5|<tuple|4|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-6|<tuple|5|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-7|<tuple|6|?|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-8|<tuple|7|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
    <associate|auto-9|<tuple|8|1|../../../../.TeXmacs/texts/scratch/no_name_1.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc><with|font|<quote|heiti>|\<#4E3A\>\<#4E86\>\<#52A0\>\<#6DF1\>\<#5BF9\>RSA\<#7B97\>\<#6CD5\>\<#7684\>\<#7406\>\<#89E3\>\<#FF0C\>\<#6839\>\<#636E\>\<#5DF2\>\<#77E5\>\<#53C2\>\<#6570\>\<#FF1A\>p
      = 17, q = 11, e = 3, M = 19\<#FF0C\>\<#624B\>\<#5DE5\>\<#8BA1\>\<#7B97\>\<#79C1\>\<#94A5\>d\<#548C\>\<#5BF9\>\<#5E94\>\<#7684\>\<#5BC6\>\<#6587\>\<#FF0C\>\<#7136\>\<#540E\>\<#5BF9\>\<#5BC6\>\<#6587\>\<#8FDB\>\<#884C\>\<#89E3\>\<#5BC6\>\<#3002\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#7531\>\<#4E8E\><with|mode|<quote|math>|p,
        q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#53EF\>\<#5F97\>

        <\with|mode|<quote|math>|math-display|<quote|true>|par-mode|<quote|center>|par-sep|<quote|0.45fn>>
          <\surround|<no-page-break*><vspace*|0.5fn>|<vspace|0.5fn><no-indent*>>
            <\tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-min-cols|3>|<twith|table-max-cols|3>|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|-1|-1|cell-rsep|0spc>|<cwith|1|-1|1|-1|cell-bsep|0sep>|<cwith|1|-1|1|-1|cell-tsep|0sep>|<cwith|1|-1|1|1|cell-hpart|1>|<cwith|1|-1|-1|-1|cell-hpart|1>|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-hyphen|b>|<cwith|1|-1|2|-2|cell-halign|c>|<cwith|1|-1|-1|-1|cell-halign|l>|<cwith|1|-1|-1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-block|no>>
              <tformat|<table|<row|<cell|n = p \<times\>q =
              187>|<cell|>|<cell|>>|<row|<cell|\<Phi\><around*|(|n|)> =
              <around*|(|p-1|)><around*|(|q-1|)> = 16 \<times\> 10 =
              160>|<cell|>|<cell|>>>>
            </tformat>
          </surround>
        </with>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#56E0\>\<#4E3A\><with|mode|<quote|math>|e=3\<nocomma\>>\<#FF0C\><with|mode|<quote|math>|\<Phi\><around*|(|n|)>=160\<nocomma\>\<nocomma\>>\<#FF0C\><with|mode|<quote|math>|ed\<equiv\>
        1 <around*|(|mod \<Phi\><around*|(|n|)>|)>>\<#FF0C\>\<#53EF\>\<#5F97\><with|mode|<quote|math>|e>\<#6A21\>\<#53CD\>\<#5143\>\<#7D20\><with|mode|<quote|math>|d<with|mode|<quote|text>|\<#7684\>\<#8868\>\<#8FBE\>\<#5F0F\>>>
      </with>

      <\with|mode|<quote|math>|math-display|<quote|true>|par-mode|<quote|center>|par-sep|<quote|0.45fn>>
        <\surround|<no-page-break*><vspace*|0.5fn>|<vspace|0.5fn><no-indent*>>
          <\tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-min-cols|3>|<twith|table-max-cols|3>|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|-1|-1|cell-rsep|0spc>|<cwith|1|-1|1|-1|cell-bsep|0sep>|<cwith|1|-1|1|-1|cell-tsep|0sep>|<cwith|1|-1|1|1|cell-hpart|1>|<cwith|1|-1|-1|-1|cell-hpart|1>|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-hyphen|b>|<cwith|1|-1|2|-2|cell-halign|c>|<cwith|1|-1|-1|-1|cell-halign|l>|<cwith|1|-1|-1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-block|no>>
            <tformat|<table|<row|<cell|3d -1 = 160k>|<cell|>|<cell|>>>>
          </tformat>
        </surround>
      </with>

      <with|font|<quote|heiti>|\<#6C42\>\<#5F97\><with|mode|<quote|math>|d>\<#7684\>\<#53EF\>\<#884C\>\<#89E3\>\<#4E3A\><with|mode|<quote|math>|107>\<#3002\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#7531\>\<#6B64\>\<#53EF\>\<#5F97\>\<#FF0C\>\<#52A0\>\<#5BC6\>\<#516C\>\<#94A5\>\<#4E3A\><with|mode|<quote|math>|<around*|(|n=187\<nocomma\>,q=3|)>>\<#FF0C\>\<#79C1\>\<#94A5\>\<#4E3A\><with|mode|<quote|math>|<around*|(|d=107,q=3|)>>\<#3002\>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#5BF9\>\<#4E8E\><with|mode|<quote|math>|M=19>\<#4EE5\>\<#53CA\>\<#516C\>\<#94A5\>\<#FF0C\>\<#6839\>\<#636E\>\<#52A0\>\<#5BC6\>\<#516C\>\<#5F0F\>

        <\with|mode|<quote|math>|math-display|<quote|true>|par-mode|<quote|center>|par-sep|<quote|0.45fn>>
          <\surround|<no-page-break*><vspace*|0.5fn>|<vspace|0.5fn><no-indent*>>
            <\tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-min-cols|3>|<twith|table-max-cols|3>|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|-1|-1|cell-rsep|0spc>|<cwith|1|-1|1|-1|cell-bsep|0sep>|<cwith|1|-1|1|-1|cell-tsep|0sep>|<cwith|1|-1|1|1|cell-hpart|1>|<cwith|1|-1|-1|-1|cell-hpart|1>|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-hyphen|b>|<cwith|1|-1|2|-2|cell-halign|c>|<cwith|1|-1|-1|-1|cell-halign|l>|<cwith|1|-1|-1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-block|no>>
              <tformat|<table|<row|<cell|m<rsup|e>\<equiv\> c <around*|(|mod
              n|)>>|<cell|>|<cell|>>>>
            </tformat>
          </surround>
        </with>

        <assign|paragraph-numbered|<quote|false>><assign|paragraph-prefix|<quote|<macro|<compound|the-paragraph>.>>><assign|paragraph-nr|<quote|5>><hidden|<tuple>><assign|subparagraph-nr|<quote|0>><flag|table
        of contents|dark green|what><assign|auto-nr|<quote|6>><write|toc|<with|par-left|<quote|4tab>|\<#89E3\>\<#5F97\><with|mode|<quote|math>|c=6672>\<#3002\>
        <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
        <no-break><pageref|auto-6><vspace|0.15fn>>><toc-notify|toc-4|\<#89E3\>\<#5F97\><with|mode|<quote|math>|c=6672>\<#3002\>><no-indent><with|font-series|<quote|bold>|math-font-series|<quote|bold>|<vspace*|0.5fn>\<#89E3\>\<#5F97\><with|mode|<quote|math>|c=6672>\<#3002\><space|2spc>>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|\<#89E3\>\<#5F97\><with|mode|<quote|math>|c=6672>\<#3002\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#5BF9\>\<#4E8E\><with|mode|<quote|math>|c=6672>\<#4EE5\>\<#53CA\>\<#79C1\>\<#94A5\>\<#FF0C\>\<#6839\>\<#636E\>\<#89E3\>\<#5BC6\>\<#516C\>\<#5F0F\>

        <\with|mode|<quote|math>|math-display|<quote|true>|par-mode|<quote|center>|par-sep|<quote|0.45fn>>
          <\surround|<no-page-break*><vspace*|0.5fn>|<vspace|0.5fn><no-indent*>>
            <\tformat|<twith|table-hyphen|y>|<twith|table-width|1par>|<twith|table-min-cols|3>|<twith|table-max-cols|3>|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|-1|-1|cell-rsep|0spc>|<cwith|1|-1|1|-1|cell-bsep|0sep>|<cwith|1|-1|1|-1|cell-tsep|0sep>|<cwith|1|-1|1|1|cell-hpart|1>|<cwith|1|-1|-1|-1|cell-hpart|1>|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|1|1|cell-hyphen|b>|<cwith|1|-1|2|-2|cell-halign|c>|<cwith|1|-1|-1|-1|cell-halign|l>|<cwith|1|-1|-1|-1|cell-hyphen|t>|<cwith|1|-1|1|-1|cell-block|no>>
              <tformat|<table|<row|<cell|c<rsup|d>\<equiv\> m <around*|(|mod
              n|)>>|<cell|>|<cell|>>>>
            </tformat>
          </surround>
        </with>

        <assign|paragraph-numbered|<quote|false>><assign|paragraph-prefix|<quote|<macro|<compound|the-paragraph>.>>><assign|paragraph-nr|<quote|9>><hidden|<tuple>><assign|subparagraph-nr|<quote|0>><flag|table
        of contents|dark green|what><assign|auto-nr|<quote|10>><write|toc|<with|par-left|<quote|4tab>|\<#6211\>\<#4EEC\>\<#5F88\>\<#96BE\>\<#76F4\>\<#63A5\>\<#6C42\>\<#89E3\><with|mode|<quote|math>|m>\<#FF0C\>\<#539F\>\<#56E0\>\<#5728\>\<#4E8E\><with|mode|<quote|math>|c<rsup|d>>\<#7684\>\<#6570\>\<#91CF\>\<#7EA7\>\<#8FC7\>\<#4E8E\>\<#5E9E\>\<#5927\>\<#3002\>\<#4E8E\>\<#6B64\>\<#FF0C\>\<#7531\>\<#4E8E\><with|mode|<quote|math>|n=p\<times\>q>\<#FF0C\>\<#4E14\><with|mode|<quote|math>|p,
        q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5206\>\<#6B65\>\<#6C42\>\<#89E3\>\<#7684\>\<#7B56\>\<#7565\>\<#964D\>\<#4F4E\>\<#6570\>\<#636E\>\<#89C4\>\<#6A21\>\<#3002\>
        <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
        <no-break><pageref|auto-10><vspace|0.15fn>>><toc-notify|toc-4|\<#6211\>\<#4EEC\>\<#5F88\>\<#96BE\>\<#76F4\>\<#63A5\>\<#6C42\>\<#89E3\><with|mode|<quote|math>|m>\<#FF0C\>\<#539F\>\<#56E0\>\<#5728\>\<#4E8E\><with|mode|<quote|math>|c<rsup|d>>\<#7684\>\<#6570\>\<#91CF\>\<#7EA7\>\<#8FC7\>\<#4E8E\>\<#5E9E\>\<#5927\>\<#3002\>\<#4E8E\>\<#6B64\>\<#FF0C\>\<#7531\>\<#4E8E\><with|mode|<quote|math>|n=p\<times\>q>\<#FF0C\>\<#4E14\><with|mode|<quote|math>|p,
        q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5206\>\<#6B65\>\<#6C42\>\<#89E3\>\<#7684\>\<#7B56\>\<#7565\>\<#964D\>\<#4F4E\>\<#6570\>\<#636E\>\<#89C4\>\<#6A21\>\<#3002\>><no-indent><with|font-series|<quote|bold>|math-font-series|<quote|bold>|<vspace*|0.5fn>\<#6211\>\<#4EEC\>\<#5F88\>\<#96BE\>\<#76F4\>\<#63A5\>\<#6C42\>\<#89E3\><with|mode|<quote|math>|m>\<#FF0C\>\<#539F\>\<#56E0\>\<#5728\>\<#4E8E\><with|mode|<quote|math>|c<rsup|d>>\<#7684\>\<#6570\>\<#91CF\>\<#7EA7\>\<#8FC7\>\<#4E8E\>\<#5E9E\>\<#5927\>\<#3002\>\<#4E8E\>\<#6B64\>\<#FF0C\>\<#7531\>\<#4E8E\><with|mode|<quote|math>|n=p\<times\>q>\<#FF0C\>\<#4E14\><with|mode|<quote|math>|p,
        q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5206\>\<#6B65\>\<#6C42\>\<#89E3\>\<#7684\>\<#7B56\>\<#7565\>\<#964D\>\<#4F4E\>\<#6570\>\<#636E\>\<#89C4\>\<#6A21\>\<#3002\><space|2spc>>

        \;
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|\<#6211\>\<#4EEC\>\<#5F88\>\<#96BE\>\<#76F4\>\<#63A5\>\<#6C42\>\<#89E3\><with|mode|<quote|math>|m>\<#FF0C\>\<#539F\>\<#56E0\>\<#5728\>\<#4E8E\><with|mode|<quote|math>|c<rsup|d>>\<#7684\>\<#6570\>\<#91CF\>\<#7EA7\>\<#8FC7\>\<#4E8E\>\<#5E9E\>\<#5927\>\<#3002\>\<#4E8E\>\<#6B64\>\<#FF0C\>\<#7531\>\<#4E8E\><with|mode|<quote|math>|n=p\<times\>q>\<#FF0C\>\<#4E14\><with|mode|<quote|math>|p,
      q>\<#4E3A\>\<#7D20\>\<#6570\>\<#FF0C\>\<#6211\>\<#4EEC\>\<#53EF\>\<#4EE5\>\<#901A\>\<#8FC7\>\<#5206\>\<#6B65\>\<#6C42\>\<#89E3\>\<#7684\>\<#7B56\>\<#7565\>\<#964D\>\<#4F4E\>\<#6570\>\<#636E\>\<#89C4\>\<#6A21\>\<#3002\>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#4E2D\>\<#6587\>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.15fn>>

      <with|par-left|<quote|4tab>|<\with|font|<quote|heiti>>
        \<#4E2D\>\<#6587\>
      </with> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>