<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1496240078382" ID="ID_1932211498" MODIFIED="1496240180431" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Advice for Applying
    </p>
    <p>
      Machine Learning
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1496240174100" ID="ID_450694791" MODIFIED="1496240180432" POSITION="right" TEXT="Deciding What to Try Next">
<node CREATED="1496240473276" ID="ID_91201440" MODIFIED="1496240476880" TEXT="Fixes high variance">
<node CREATED="1496240500780" ID="ID_165120200" MODIFIED="1496240502341" TEXT="Getting more training examples"/>
<node CREATED="1496240510580" ID="ID_1976627913" MODIFIED="1496240513301" TEXT="Trying smaller sets of features"/>
<node CREATED="1496240556011" ID="ID_442642585" MODIFIED="1496240556982" TEXT="Increasing &#x3bb;"/>
</node>
<node CREATED="1496240491307" ID="ID_4828072" MODIFIED="1496240493133" TEXT="Fixes high bias">
<node CREATED="1496240523828" ID="ID_1666833705" MODIFIED="1496240525859" TEXT="Adding features"/>
<node CREATED="1496240535948" ID="ID_771146797" MODIFIED="1496240537716" TEXT="Adding polynomial features"/>
<node CREATED="1496240545379" ID="ID_841326766" MODIFIED="1496240547549" TEXT="Decreasing &#x3bb;"/>
</node>
<node CREATED="1496240388812" ID="ID_1051347292" MODIFIED="1496240390080" TEXT="Diagnosing Neural Networks">
<node CREATED="1496240593011" ID="ID_1412032074" MODIFIED="1496240622462">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A neural network with fewer parameters is <b>prone to underfitting</b>.
    </p>
    <p>
      It is also <b>computationally cheaper</b>.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496240626740" ID="ID_1965991803" MODIFIED="1496240662208">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A large neural network with more parameters is <b>prone to overfitting</b>. It is also
    </p>
    <p>
      <b>computationally expensive</b>. In this case you can use regularization (increase &#955;)
    </p>
    <p>
      to address the overfitting.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1496240419468" ID="ID_138069471" MODIFIED="1496241751431">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3">Model Selection </font>
    </p>
    <p>
      <font color="rgb(55, 58, 60)" face="OpenSans, Arial, sans-serif" size="3">How can we tell which parameters &#920; to leave in the model?</font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1496241704405" ID="ID_605617837" MODIFIED="1496241707678" TEXT="Get more data (very difficult)"/>
<node CREATED="1496241721300" ID="ID_1516317796" MODIFIED="1496241723701" TEXT="Choose the model which best fits the data without overfitting (very difficult)."/>
<node CREATED="1496241729548" ID="ID_304778332" MODIFIED="1496241731302" TEXT="Reduce the opportunity for overfitting through regularization."/>
<node CREATED="1496241751432" ID="ID_1432039772" MODIFIED="1496241754100" TEXT="Bias: approximation error (Difference between expected value and optimal value)">
<node CREATED="1496241762484" ID="ID_1823847630" MODIFIED="1496241764462" TEXT="High Bias = UnderFitting (BU)"/>
<node CREATED="1496241773020" ID="ID_1752836528" MODIFIED="1496241775757" TEXT="Jtrain(&#x398;) and JCV(&#x398;) both will be high and Jtrain(&#x398;) &#x2248; JCV(&#x398;)"/>
</node>
<node CREATED="1496241784085" ID="ID_495950171" MODIFIED="1496241785901" TEXT="Variance: estimation error due to finite data">
<node CREATED="1496241977652" ID="ID_1512656179" MODIFIED="1496241978972" TEXT="High Variance = OverFitting (VO)"/>
<node CREATED="1496241985317" ID="ID_1629514129" MODIFIED="1496241986495" TEXT="Jtrain(&#x398;) is low and JCV(&#x398;) &#x226b;Jtrain(&#x398;)"/>
</node>
<node CREATED="1496241791980" ID="ID_1280158133" MODIFIED="1496241800614" TEXT="Intuition for the bias-variance trade-off:">
<node CREATED="1496241943428" ID="ID_835357081" MODIFIED="1496241944780" TEXT="Complex model =&gt; sensitive to data =&gt; much affected by changes in X =&gt; high variance, low bias."/>
<node CREATED="1496241953924" ID="ID_1739304192" MODIFIED="1496241955130" TEXT="Simple model =&gt; more rigid =&gt; does not change as much with changes in X =&gt; low variance, high bias."/>
</node>
<node CREATED="1496241807692" ID="ID_1124744581" MODIFIED="1496241808716" TEXT="Regularization Effects:">
<node CREATED="1496241923858" ID="ID_519027995" MODIFIED="1496241930326" TEXT="Small values of &#x3bb; allow model to become finely tuned to noise leading to large variance =&gt; overfitting.">
<arrowlink DESTINATION="ID_519027995" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_725596104" STARTARROW="None" STARTINCLINATION="0;0;"/>
<linktarget COLOR="#b0b0b0" DESTINATION="ID_519027995" ENDARROW="Default" ENDINCLINATION="0;0;" ID="Arrow_ID_725596104" SOURCE="ID_519027995" STARTARROW="None" STARTINCLINATION="0;0;"/>
</node>
<node CREATED="1496241932465" ID="ID_601732412" MODIFIED="1496241933880" TEXT="Large values of &#x3bb; pull weight parameters to zero leading to large bias =&gt; underfitting."/>
</node>
<node CREATED="1496241815548" ID="ID_588630870" MODIFIED="1496241817572" TEXT="Model Complexity Effects:">
<node CREATED="1496241899192" ID="ID_272267911" MODIFIED="1496241900569" TEXT="Lower-order polynomials (low model complexity) have high bias and low variance. In this case, the model fits poorly consistently."/>
<node CREATED="1496241906179" ID="ID_1166245548" MODIFIED="1496241907461" TEXT="Higher-order polynomials (high model complexity) fit the training data extremely well and the test data extremely poorly. These have low bias on the training data, but very high variance."/>
<node CREATED="1496241915084" ID="ID_1383127421" MODIFIED="1496241916564" TEXT="In reality, we would want to choose a model somewhere in between, that can generalize well but also fits the data reasonably well."/>
</node>
<node CREATED="1496241824980" ID="ID_1953867439" MODIFIED="1496241826436" TEXT="A typical rule of thumb when running diagnostics is:">
<node CREATED="1496241834756" ID="ID_1782979280" MODIFIED="1496241836325" TEXT="More training examples fixes high variance but not high bias."/>
<node CREATED="1496241841740" ID="ID_624515107" MODIFIED="1496241843100" TEXT="Fewer features fixes high variance but not high bias."/>
<node CREATED="1496241848060" ID="ID_308670726" MODIFIED="1496241850525" TEXT="Additional features fixes high bias but not high variance."/>
<node CREATED="1496241868377" ID="ID_292951468" MODIFIED="1496241869899" TEXT="The addition of polynomial and interaction features fixes high bias but not high variance."/>
<node CREATED="1496241876005" ID="ID_507174922" MODIFIED="1496241877260" TEXT="When using gradient descent, decreasing lambda can fix high bias and increasing lambda can fix high variance (lambda is the regularization parameter)."/>
<node CREATED="1496241886132" ID="ID_624883679" MODIFIED="1496241887385" TEXT="When using neural networks, small neural networks are more prone to under-fitting and big neural networks are prone to over-fitting. Cross-validation of network size is a way to choose alternatives."/>
</node>
</node>
</node>
<node CREATED="1496240198572" ID="ID_256339819" MODIFIED="1496240200202" POSITION="right" TEXT="Evaluating a Hypothesis"/>
<node CREATED="1496240219276" ID="ID_348721542" MODIFIED="1496240234749" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Model Selection and
    </p>
    <p>
      Train/Validation/Test Sets
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496240247908" ID="ID_188368107" MODIFIED="1496240252850" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Diagnosing Bias vs. Variance
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496240275156" ID="ID_1475237064" MODIFIED="1496240276188" POSITION="right" TEXT="Regularization and Bias/Variance"/>
<node CREATED="1496240294787" ID="ID_1075056416" MODIFIED="1496240295963" POSITION="right" TEXT="Learning Curves"/>
</node>
</map>
