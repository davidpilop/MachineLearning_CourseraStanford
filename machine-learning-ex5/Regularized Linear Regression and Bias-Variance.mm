<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1495821922856" ID="ID_1805755992" MODIFIED="1495821961374" STYLE="bubble" TEXT="Regularized Linear Regression and Bias-Variance">
<node BACKGROUND_COLOR="#99ffff" CREATED="1495821951442" ID="ID_1680291280" MODIFIED="1496252316327" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Loading and Visualizing Data
    </p>
  </body>
</html></richcontent>
<edge COLOR="#009999"/>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1495822158815" ID="ID_1704918756" MODIFIED="1495822826419" TEXT="Load from ex5data1 (X, y, Xval, yval, Xtest, ytest)">
<node CREATED="1495822939033" ID="ID_1358966674" MODIFIED="1495822940268" TEXT="load (&apos;ex5data1.mat&apos;);"/>
</node>
<node CREATED="1495822225391" ID="ID_467259849" MODIFIED="1495822231120" TEXT="m = Number of examples">
<node CREATED="1495822917433" ID="ID_1974686272" MODIFIED="1495822927047" TEXT="m = size(X, 1);"/>
</node>
<node CREATED="1495822240553" ID="ID_439946768" MODIFIED="1495822243198" TEXT="Plot training data">
<node CREATED="1495822841636" ID="ID_901461656" MODIFIED="1495822910617">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      plot(X, y, 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
    </p>
    <p>
      xlabel('Change in water level (x)');
    </p>
    <p>
      ylabel('Water flowing out of the dam (y)');
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node BACKGROUND_COLOR="#9999ff" CREATED="1495821980329" ID="ID_1579943802" MODIFIED="1496252317178" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Regularized Linear </b>
    </p>
    <p style="text-align: center">
      <b>Regression Cost and </b>
    </p>
    <p style="text-align: center">
      <b>Regrssion Gradient</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#000099"/>
<node CREATED="1495826751437" ID="ID_283370256" MODIFIED="1495826888677">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>J</b>, <b>grad</b>] = <b><i>LINEARREGCOSTFUNCTION</i></b>(<b>X</b>, <b>y</b>, <b>theta</b>, <b>lambda</b>) computes the&#160;
    </p>
    <p>
      cost of using theta as the parameter for linear regression to fit the data points in
    </p>
    <p>
      X and y. Returns the cost in J and the gradient in grad
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1495826916812" ID="ID_860630402" MODIFIED="1495828116469">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      predictions = X*theta;
    </p>
    <p>
      sqrErrors = (predictions-y)'*(predictions-y);
    </p>
    <p>
      theta(1)=0;
    </p>
    <p>
      J = 1/(2*m) * sqrErrors + lambda/(2*m) * (theta')*theta;
    </p>
    <p>
      grad = 1/m * ((predictions-y)'*X)' + lambda/m * theta;
    </p>
    <p>
      grad = grad(:);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ff99ff" CREATED="1495822009920" ID="ID_588459930" MODIFIED="1496252318062" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Train Linear Regression</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#990099"/>
<node CREATED="1495828261470" ID="ID_1850228514" MODIFIED="1495828722643">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>theta</b>] = <b><i>TRAINLINEARREG</i></b>&#160;(<b>X</b>, <b>y</b>, <b>lambda</b>) trains linear
    </p>
    <p>
      regression using the dataset (X, y) and regularization
    </p>
    <p>
      parameter lambda. Returns the trained parameters theta.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1495828810763" ID="ID_1768522115" MODIFIED="1495828868067">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      % Initialize Theta
    </p>
    <p>
      initial_theta = zeros(size(X, 2), 1);
    </p>
    <p>
      
    </p>
    <p>
      % Create &quot;short hand&quot; for the cost function to be minimized
    </p>
    <p>
      costFunction = @(t) linearRegCostFunction(X, y, t, lambda);
    </p>
    <p>
      
    </p>
    <p>
      % Now, costFunction is a function that takes in only one argument
    </p>
    <p>
      options = optimset('MaxIter', 200, 'GradObj', 'on');
    </p>
    <p>
      
    </p>
    <p>
      % Minimize using fmincg
    </p>
    <p>
      theta = fmincg(costFunction, initial_theta, options);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ff9999" CREATED="1495822040394" ID="ID_895154755" MODIFIED="1496252319816" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Learning Curve for </b>
    </p>
    <p style="text-align: center">
      <b>Linear Regression</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#990000"/>
<node CREATED="1495828975339" ID="ID_1213312813" MODIFIED="1495829370497">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>error_train</b>, <b>error_val</b>] = <b><i>LEARNINGCURVE</i></b>(<b>X</b>, <b>y</b>, <b>Xval</b>, <b>yval</b>,<b>&#160;lambda</b>) returns the
    </p>
    <p>
      train and cross validation set errors for a learning curve. In particular,&#160;it returns two
    </p>
    <p>
      vectors of the same length - error_train and&#160;error_val. Then, error_train(i) contains the
    </p>
    <p>
      training error for&#160;i examples (and similarly for error_val(i)).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1496237840172" ID="ID_537109326" MODIFIED="1496238092193">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for i = 1:m
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;theta = trainLinearReg(X(1:i, :),y(1:i),lambda);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;error_train(i) = linearRegCostFunction(X(1:i, :),y(1:i),theta,0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;error_val(i) = linearRegCostFunction(Xval,yval,theta,0);
    </p>
    <p>
      end
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#ffff99" CREATED="1495822067200" ID="ID_1015429457" MODIFIED="1496252320929" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Feature Mapping for </b>
    </p>
    <p style="text-align: center">
      <b>Polynomial Regression</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#999900"/>
<node CREATED="1496238185660" ID="ID_2194350" MODIFIED="1496238249248">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>X_poly</b>] = <b><i>POLYFEATURES</i></b>(<b>X</b>, <b>p</b>) takes a data matrix X (size mx1) and maps each
    </p>
    <p>
      example into its polynomial features where&#160;X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...&#160;&#160;X(i).^p];
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1496238256107" ID="ID_1116051454" MODIFIED="1496238290969">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for t = 1:p
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;X_poly(:, t) = X.^t;
    </p>
    <p>
      end
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node BACKGROUND_COLOR="#99ff99" CREATED="1495822109074" ID="ID_512140642" MODIFIED="1496252265962" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Learning Curve for </b>
    </p>
    <p style="text-align: center">
      <b>Polynomial Regression</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#009900"/>
</node>
<node BACKGROUND_COLOR="#99ffff" CREATED="1495822123248" ID="ID_1694548884" MODIFIED="1496252323235" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p style="text-align: center">
      <b>Validation for </b>
    </p>
    <p style="text-align: center">
      <b>Selecting Lambda</b>
    </p>
  </body>
</html></richcontent>
<edge COLOR="#009999"/>
<node CREATED="1496249480543" ID="ID_761454215" MODIFIED="1496249600696">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      [<b>lambda_vec</b>, <b>error_train</b>, <b>error_val</b>] = <b><i>VALIDATIONCURVE</i></b>(<b>X</b>, <b>y</b>, <b>Xval</b>, <b>yval</b>)
    </p>
    <p>
      returns the train and validation errors (in error_train, error_val)&#160;for different values of
    </p>
    <p>
      lambda. You are given the <b>training set</b>&#160;(X,&#160;y) and <b>validation set</b>&#160;(Xval, yval).
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496249645634" ID="ID_405714132" MODIFIED="1496249831860">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The vector lambda_vec contains the different lambda parameters to use for each
    </p>
    <p>
      calculation of the errors, i.e, error_train(i), and error_val(i) should give you the errors
    </p>
    <p>
      obtained after training with lambda = lambda_vec(i)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1496252059796" ID="ID_466219420" MODIFIED="1496252111737">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for i = 1:length(lambda_vec)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;lambda = lambda_vec(i);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;theta = trainLinearReg(X, y, lambda);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;error_train(i) = linearRegCostFunction(X,y,theta,0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;error_val(i) = linearRegCostFunction(Xval,yval,theta,0);
    </p>
    <p>
      end
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</map>
