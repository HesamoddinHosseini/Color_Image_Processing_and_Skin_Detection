# Digital Image Processing (DIP),Color Image Processing and Skin Detection, Mini-Project 6

# English

Question)

1- By searching in the sources, find three color spaces other than the color spaces introduced in the lesson, and in each case, write down the features of the color space, its uses and its relationship with the RGB or HSI color space.

One of the simple and effective algorithms for skin detection is an algorithm based on color differentiation known as histogram backprojection. The work steps in this algorithm are:

a. First, the image I(x,y) is converted into a color space in which chromaticity is extracted. Here, normalized color space is used for this purpose. For this purpose, we normalize the RGB color space as follows:

<img width="243" alt="Screen Shot 2023-07-28 at 2 54 04 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/eab3406f-a7ad-4bd7-8bde-776173b16147">

c. Now we form the Likelihood image of the color image i.e. ILH(x,y) in such a way that at each location (x,y) based on the nr and ng of the corresponding point in the original image i.e. I(x,y), the value of (nr, ng) ) of matrix H in ILH(x,y). That is ILH(x,y)=H(nr, ng) where [nr, ng]=I(x,y).

b. Now we form the two-dimensional histogram H(n_r,n_g) for a sample part of the resulting image (IR(x,y)). For this purpose, we quantize the r and g values in this part of the image to N levels (assume the normalized values are nr and ng). We form the H matrix with dimensions of NxN with zero values and then scan the image and add one unit for each pixel of IR(x,y), the row and column corresponding to nr and ng in the histogram matrix.

![Screen Shot 2023-07-28 at 3 01 15 pm](https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/ec0ee326-13ea-432a-abaf-69f97bd19411)

2- Based on this, use the Im1910 image as an example of skin images and create a two-dimensional histogram for it. For this purpose, you should normalize the colors in this image and then quantize the resulting values to 128 levels. Now, with this histogram, obtain the Likelihood image for Im1911 and Im1916 images, and make the resulting ILH(x,y) image binary. Use thresholding to binarize. Then select 3 other images as you wish and run and test the above algorithm for skin detection on it.

Why doesn't the algorithm recognize all points of the skin and it also recognizes pixels as wrong skin?


Abstract)

In the first part of this mini-project, we have introduced three color spaces except the color spaces introduced in the lesson, and in each case we have discussed the characteristics of the color space, its applications, and its relationship with the RGB or HSI color space.
In the second part, we will examine one of the simple and efficient algorithms for skin detection (Skin Detection), which is an algorithm based on color differentiation. This algorithm is known as histogram back-projection.
In this algorithm, we first convert the image into a color space in which chromaticity is extracted. Here we use the normalized color space. For this purpose, we normalize the RGB color space. In detecting skin color, we only use red and green surfaces and ignore the blue surface. Now, in this image, we obtain the amount of green and red color of each pixel and form a two-dimensional histogram, and then we apply the special image in which we want to form the skin to the histogram to obtain the skin. For this purpose, we quantize the r and g values in this part of the image to N levels. We form the NxN matrix H with zero values and then scan the image and detect the skin.
We use Matlab to implement this project.


Im 1910 =Images of different skins

![Im1910](https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/2a910b0d-e11b-4ef9-b5b4-d7a3b23dea53)

Result)

Original image and skin identification by algorithm:

<img width="676" alt="Screen Shot 2023-07-28 at 3 13 29 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/03daa1b2-0072-4150-9066-0f844da920cf">

<img width="678" alt="Screen Shot 2023-07-28 at 3 17 05 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/2dd023c5-347e-49ac-aaea-ada4d56b82a3">


Hesamoddin Hosseini

# Persian

سوال)

1-	با جستجو در منابع، سه فضای رنگ بجز فضاهای رنگ معرفی شده در درس را پیدا کرده در هر مورد ویژگیهای فضای رنگ، کاربردها و ارتباط آن با فضای رنگ RGB یا HSI را بنویسید.

یکی از الگوریتم‌های ساده و کارا برای تشخیص پوست (Skin Detection)، الگوریتمی مبتنی بر تمایز رنگ است که به نام پس‌افکنش هیستوگرام (histogram backprojection) شناخته می‌شود. مراحل کار در این الگوریتم عبارتند از:


الف) ابتدا تصویر (I(x,y به فضای رنگی تبدیل می‌شود که در آن کروماتیسیتی استخراج شود. در اینجا برای این کار از فضای رنگ نرمالیزه شده استفاده می‌شود. برای این منظور فضای رنگ RGB را بصورت زیر نرمالیزه می‌کنیم:

<img width="243" alt="Screen Shot 2023-07-28 at 2 54 04 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/eab3406f-a7ad-4bd7-8bde-776173b16147">

ب) حال هیستوگرام دو بعدی (H(n_r,n_g را برای بخش نمونه‌ای از تصویر حاصل  ((IR(x,y) تشکیل می‌دهیم. برای این منظور، مقادیر r و g در این بخش از تصویر را به N سطح کوانتایز می‌کنیم (فرض کنید مقادیر نرمالیزه شده nr و ng است). ماتریس H به ابعاد NxN با مقادیر صفر را تشکیل می‌دهیم و سپس تصویر را اسکن کرده و به ازای هر پیکسل از (IR(x,y، سطر و ستون متناظر با nr و ng در ماتریس هیستوگرام را یک واحد اضافه می‌کنیم.

 ج) حال تصویر Likelihood تصویر رنگی یعنی (ILH(x,y را بدین شکل تشکیل می‌دهیم که در هر مکان (x,y) آن بر اساس nr و ng نقطه متناظر در تصویر اصلی یعنی (I(x,y، مقدار (nr, ng) از ماتریس H را در (ILH(x,y قرار می‌دهیم. یعنی (ILH(x,y)=H(nr, ng که در آن (nr,ng]=I(x,y]

![Screen Shot 2023-07-28 at 3 01 15 pm](https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/ec0ee326-13ea-432a-abaf-69f97bd19411)

2-	حال بر این اساس، تصویر Im1910 را به عنوان نمونه‌ای از تصاویر پوست استفاده کرده و برای آن هیستوگرام دو بعدی را تشکیل دهید. برای این منظور بایستی در این تصویر رنگها را نرمالیزه کرده و سپس مقادیر حاصل را به 128 سطح کوانتایز کنید. حال با داشتن این هیستوگرام تصویر Likelihood را برای تصاویر Im1911 و Im1916 بدست آورده، تصویر (ILH(x,y حاصل را باینری کنید. برای  باینری کردن از آستانه‌گذاری استفاده کنید. سپس 3 تصویر دیگر را نیز به دلخواه انتخاب کرده و الگوریتم فوق برای تشخیص پوست را بر روی آن اجرا و آزمایش کنید.

چرا الگوریتم تمام نقاط پوست را تشخیص نداده و پیکسلهایی را نیز به غلط پوست تشخیص می‌دهد؟

خلاصه)

در بخش اول این مینی پروژه سه فضای رنگ به جز فضاهای رنگ معرفی شده در درس را معرفی کرده و در هر مورد ویژگی های فضای رنگ، کاربردها و ارتباط آن با فضای رنگ RGB یا HSI صحبت نموده ایم.

در بخش دوم، یکی از الگوریتم‌های ساده و کارا برای تشخیص پوست (Skin Detection)، که الگوریتمی مبتنی بر تمایز رنگ است را مورد بررسی قرار خواهیم داد. این الگوریتم به نام پس‌افکنش هیستوگرام (histogram backprojection ) شناخته می‌شود.

در این الگوریتم ابتدا تصویر را به فضای رنگی تبدیل می‌ کنیم که در آن کروماتیسیتی استخراج شود. در اینجا برای این کار از فضای رنگ نرمالیزه شده استفاده می‌ کنیم. برای این منظور فضای رنگ RGB را نرمالیزه می‌کنیم. در تشخیص رنگ پوست ، تنها از سطح های قرمز و سبز استفاده می کنیم و از سطح آبی صرف نظر می کنیم . حال در این تصویر میزان رنگ سبز و قرمز هر پیکسل را بدست می آوریم و هیستوگرام دو بعدی را تشکیل  می دهیم و سپس تصویر خاصی که می خواهیم پوست را در آن تشکیل بدهیم را روی هیستوگرام اعمال می کنیم تا پوست را بدست آوریم. برای این منظور، مقادیر r و g در این بخش از تصویر را به N سطح کوانتایز می‌کنیم. ماتریس H به ابعاد NxN با مقادیر صفر را تشکیل می‌دهیم و سپس تصویر را اسکن کرده و پوست را تشخیص می دهیم.
برای پیاده سازی این پروژه از Matlab استفاده می نماییم

Im 1910 =تصاویری از پوست های مختلف

![Im1910](https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/2a910b0d-e11b-4ef9-b5b4-d7a3b23dea53)


نتایج)

تصویر اصلی و شناسایی پوست توسط الگوریتم:

<img width="676" alt="Screen Shot 2023-07-28 at 3 13 29 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/03daa1b2-0072-4150-9066-0f844da920cf">


<img width="678" alt="Screen Shot 2023-07-28 at 3 17 05 pm" src="https://github.com/HesamoddinHosseini/Color_Image_Processing_and_Skin_Detection/assets/89314766/2dd023c5-347e-49ac-aaea-ada4d56b82a3">




Hesamoddin Hosseini
