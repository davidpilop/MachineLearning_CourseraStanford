<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1496408762133" ID="ID_1406064383" MODIFIED="1496409720283" STYLE="bubble">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b><i>Support Vector </i></b>
    </p>
    <p style="text-align: center">
      <b><i>Machines</i></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1496409713353" ID="ID_577168337" MODIFIED="1496409817086" POSITION="right" TEXT="Loading and Visualizing Data"/>
<node CREATED="1496410668028" ID="ID_35106839" MODIFIED="1496410669598" POSITION="right" TEXT="Training Linear SVM">
<node CREATED="1496410693270" ID="ID_1624655428" MODIFIED="1496410732173">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b>C</b>&#160;parameter is a positive value that controls
    </p>
    <p>
      the penalty for misclassified training examples
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1496410806729" ID="ID_1864231456" MODIFIED="1496410897023">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A large <b>C</b>&#160;parameter tells the SVM to try to classify all the examples correctly
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1496410996347" ID="ID_736433617" MODIFIED="1496410998907" POSITION="right" TEXT="Implementing Gaussian Kernel">
<node CREATED="1496411512964" ID="ID_1835497620" MODIFIED="1496411514124" TEXT="measures the &#x201c;distance&#x201d; between a pair of examples"/>
<node CREATED="1496411545476" ID="ID_1456134192" MODIFIED="1496411565528">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The Gaussian kernel is also parameterized by a bandwidth parameter
    </p>
    <p>
      which determines how fast the similarity metric decreases (to 0) as the
    </p>
    <p>
      examples are further apart
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1496411625226" ID="ID_535986466" MODIFIED="1496411638674">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
    </p>
    <p>
      and returns the value in sim
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1496695322211" ID="ID_1921311709" MODIFIED="1496695332264" TEXT="sim = exp(-((x1-x2)&apos;*(x1-x2))/(2*sigma^2));"/>
</node>
<node CREATED="1496695363099" ID="ID_509336190" MODIFIED="1496695364762" POSITION="right" TEXT="Visualizing Dataset 2"/>
<node CREATED="1496695379564" ID="ID_186347537" MODIFIED="1496695381475" POSITION="right" TEXT="Training SVM with RBF Kernel (Dataset 2)"/>
<node CREATED="1496695644407" ID="ID_549370695" MODIFIED="1496695646370" POSITION="right" TEXT="Visualizing Dataset 3"/>
<node CREATED="1496695668513" ID="ID_578062715" MODIFIED="1496695670431" POSITION="right" TEXT="Training SVM with RBF Kernel (Dataset 3)">
<node CREATED="1496761637062" ID="ID_1224730206" MODIFIED="1496761955273">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>model</b>] = <b><i>SVMTRAIN</i></b>(<b>X</b>, <b>Y</b>, <b>C</b>, <b>kernelFunction</b>, <b>tol</b>, <b>max_passes</b>) trains an
    </p>
    <p>
      SVM classifier and returns trained model.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1496761747569" ID="ID_809100919" MODIFIED="1496761928318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>X</b>&#160;is the matrix of training&#160;examples. Each row is a training example, and the
    </p>
    <p>
      jth column holds the&#160;jth feature.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496761798309" ID="ID_1047125289" MODIFIED="1496761882793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Y</b>&#160;is a column matrix containing 1 for positive examples
    </p>
    <p>
      and 0 for negative examples
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496761822868" ID="ID_559395825" MODIFIED="1496761875131">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>C</b>&#160;is the standard SVM regularization&#160;parameter
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496761842849" ID="ID_50436203" MODIFIED="1496761864299">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>tol</b>&#160;is a tolerance value used for determining equality of&#160;floating point numbers.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1496761956935" ID="ID_161357819" MODIFIED="1496761970012">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>max_passes</b>&#160;controls the number of iterations&#160;over the dataset
    </p>
    <p>
      (without changes to alpha) before the algorithm quits.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1496762017654" ID="ID_432115103" MODIFIED="1496762141294">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>pred</b>&#160;= <b><i>SVMPREDICT</i></b>(<b>model</b>, <b>X</b>) returns a vector of predictions using a&#160;trained SVM
    </p>
    <p>
      model (svmTrain). X is a mxn matrix where there each example is a row. model is a
    </p>
    <p>
      svm model returned from svmTrain. predictions pred is a mx1 column of predictions of
    </p>
    <p>
      {0, 1} values.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
