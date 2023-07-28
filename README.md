# Digital Image Processing (DIP),Color Image Processing and Skin Detection, Mini-Project 6



Question)

1- By searching in the sources, find three color spaces other than the color spaces introduced in the lesson, and in each case, write down the features of the color space, its uses and its relationship with the RGB or HSI color space.

One of the simple and effective algorithms for skin detection is an algorithm based on color differentiation known as histogram backprojection. The work steps in this algorithm are:

a. First, the image I(x,y) is converted into a color space in which chromaticity is extracted. Here, normalized color space is used for this purpose. For this purpose, we normalize the RGB color space as follows:



Abstract)

In the first part of this mini-project, we have introduced three color spaces except the color spaces introduced in the lesson, and in each case we have discussed the characteristics of the color space, its applications, and its relationship with the RGB or HSI color space.
In the second part, we will examine one of the simple and efficient algorithms for skin detection (Skin Detection), which is an algorithm based on color differentiation. This algorithm is known as histogram back-projection.
In this algorithm, we first convert the image into a color space in which chromaticity is extracted. Here we use the normalized color space. For this purpose, we normalize the RGB color space. In detecting skin color, we only use red and green surfaces and ignore the blue surface. Now, in this image, we obtain the amount of green and red color of each pixel and form a two-dimensional histogram, and then we apply the special image in which we want to form the skin to the histogram to obtain the skin. For this purpose, we quantize the r and g values in this part of the image to N levels. We form the NxN matrix H with zero values and then scan the image and detect the skin.
We use Matlab to implement this project.

Hesamoddin Hosseini

سوال)

1-	با جستجو در منابع، سه فضای رنگ بجز فضاهای رنگ معرفی شده در درس را پیدا کرده در هر مورد ویژگیهای فضای رنگ، کاربردها و ارتباط آن با فضای رنگ RGB یا HSI را بنویسید.

یکی از الگوریتم‌های ساده و کارا برای تشخیص پوست (Skin Detection)، الگوریتمی مبتنی بر تمایز رنگ است که به نام پس‌افکنش هیستوگرام (histogram backprojection) شناخته می‌شود. مراحل کار در این الگوریتم عبارتند از:

خلاصه

در بخش اول این مینی پروژه سه فضای رنگ به جز فضاهای رنگ معرفی شده در درس را معرفی کرده و در هر مورد ویژگی های فضای رنگ، کاربردها و ارتباط آن با فضای رنگ RGB یا HSI صحبت نموده ایم.

در بخش دوم، یکی از الگوریتم‌های ساده و کارا برای تشخیص پوست (Skin Detection)، که الگوریتمی مبتنی بر تمایز رنگ است را مورد بررسی قرار خواهیم داد. این الگوریتم به نام پس‌افکنش هیستوگرام (histogram backprojection ) شناخته می‌شود.

الف) ابتدا تصویر (I(x,y به فضای رنگی تبدیل می‌شود که در آن کروماتیسیتی استخراج شود. در اینجا برای این کار از فضای رنگ نرمالیزه شده استفاده می‌شود. برای این منظور فضای رنگ RGB را بصورت زیر نرمالیزه می‌کنیم:

در این الگوریتم ابتدا تصویر را به فضای رنگی تبدیل می‌ کنیم که در آن کروماتیسیتی استخراج شود. در اینجا برای این کار از فضای رنگ نرمالیزه شده استفاده می‌ کنیم. برای این منظور فضای رنگ RGB را نرمالیزه می‌کنیم. در تشخیص رنگ پوست ، تنها از سطح های قرمز و سبز استفاده می کنیم و از سطح آبی صرف نظر می کنیم . حال در این تصویر میزان رنگ سبز و قرمز هر پیکسل را بدست می آوریم و هیستوگرام دو بعدی را تشکیل  می دهیم و سپس تصویر خاصی که می خواهیم پوست را در آن تشکیل بدهیم را روی هیستوگرام اعمال می کنیم تا پوست را بدست آوریم. برای این منظور، مقادیر r و g در این بخش از تصویر را به N سطح کوانتایز می‌کنیم. ماتریس H به ابعاد NxN با مقادیر صفر را تشکیل می‌دهیم و سپس تصویر را اسکن کرده و پوست را تشخیص می دهیم.

برای پیاده سازی این پروژه از Matlab استفاده می نماییم.

Hesamoddin Hosseini
