# Digital Image Processing (DIP),Color Image Processing and Skin Detection, Mini-Project 6



Question)

Filtering operations in the frequency domain

1- Considering Im421 to Im423 images as input, using Gaussian low-pass filters with 10 different bandwidths, smooth the image and show the result.

2-In each case, get what the low-pass filter removed once in the location domain and once in the frequency domain, and display the result. Display each image next to the corresponding image from step (1).

3. Produce 50 f1 to f50 images from each image, where f1 is the original image. Other images f2 to f50 are smaller and smaller versions of f1 so that each image is smaller than the previous image. Resize so that the last image, f50, is one-eighth the size of the original image. Convert images into a video and watch it. Describe how you feel. What is the reason for this?

The Im421 to Im423 images are each made up of two different images, one image passed through a low-pass filter and the other through a high-pass filter, and finally grouped together at the appropriate intensity setting. Based on this, create such an image by considering two of your favorite images.


Abstract)

In the first part of this mini-project, we have introduced three color spaces except the color spaces introduced in the lesson, and in each case we have discussed the characteristics of the color space, its applications, and its relationship with the RGB or HSI color space.
In the second part, we will examine one of the simple and efficient algorithms for skin detection (Skin Detection), which is an algorithm based on color differentiation. This algorithm is known as histogram back-projection.
In this algorithm, we first convert the image into a color space in which chromaticity is extracted. Here we use the normalized color space. For this purpose, we normalize the RGB color space. In detecting skin color, we only use red and green surfaces and ignore the blue surface. Now, in this image, we obtain the amount of green and red color of each pixel and form a two-dimensional histogram, and then we apply the special image in which we want to form the skin to the histogram to obtain the skin. For this purpose, we quantize the r and g values in this part of the image to N levels. We form the NxN matrix H with zero values and then scan the image and detect the skin.
We use Matlab to implement this project.

Hesamoddin Hosseini

سوال)

1-	با در نظر گرفتن تصاویر Im421 تا Im423 به عنوان ورودی، با استفاده از فیلترهای پایین‌گذر گوسی با 10 پهنای باند مختلف، تصویر را هموار کرده نتیجه را نشان دهید.

2-	در هر مورد، آنچه که فیلتر پایین‌گذر حذف کرده را یکبار در حوزه‌ی مکان و یکبار در حوزه فرکانس بدست آورید و نتیجه را نمایش دهید. هر تصویر را درکنار تصویر متناظر از مرحله (1) نمایش دهید.

3-	از هر کدام از تصاویر 50 تصویر f1 تا f50 تولید کنید که در آن f1 تصویر اصلی است. تصاویر دیگر f2 تا f50 نسخه‌های کوچک و کوچکتر شده f1 هستند بگونه‌ای که هر تصویر نسبت به تصویر قبل کوچکتر است. تغییر سایز را بگونه‌ای انجام دهید که ابعاد آخرین تصویر، یعنی f50 یک هشتم تصویر اصلی باشد. تصاویر را به شکل یک ویدیو درآورده و آنرا مشاهده کنید. آنچه را که حس می‌کنید توصیف کنید. چه دلیلی برای این موضوع وجود دارد.

تصاویر
Im421 تا Im423 هر یک از دو تصویر مختلف ساخته شده است، یک تصویر از یک فیلتر پایین‌گذر و دیگری از یک فیلتر بالاگذر عبور داده شده و نهایتا با تنظیم شدت مناسب با هم جمع شده‌اند. بر این اساس با در نظر گرفتن دو تصویر دلخواه شما نیز چنین تصویری ایجاد کنید.


خلاصه

در بخش اول این مینی پروژه سه فضای رنگ به جز فضاهای رنگ معرفی شده در درس را معرفی کرده و در هر مورد ویژگی های فضای رنگ، کاربردها و ارتباط آن با فضای رنگ RGB یا HSI صحبت نموده ایم.

در بخش دوم، یکی از الگوریتم‌های ساده و کارا برای تشخیص پوست (Skin Detection)، که الگوریتمی مبتنی بر تمایز رنگ است را مورد بررسی قرار خواهیم داد. این الگوریتم به نام پس‌افکنش هیستوگرام (histogram backprojection ) شناخته می‌شود.

در این الگوریتم ابتدا تصویر را به فضای رنگی تبدیل می‌ کنیم که در آن کروماتیسیتی استخراج شود. در اینجا برای این کار از فضای رنگ نرمالیزه شده استفاده می‌ کنیم. برای این منظور فضای رنگ RGB را نرمالیزه می‌کنیم. در تشخیص رنگ پوست ، تنها از سطح های قرمز و سبز استفاده می کنیم و از سطح آبی صرف نظر می کنیم . حال در این تصویر میزان رنگ سبز و قرمز هر پیکسل را بدست می آوریم و هیستوگرام دو بعدی را تشکیل  می دهیم و سپس تصویر خاصی که می خواهیم پوست را در آن تشکیل بدهیم را روی هیستوگرام اعمال می کنیم تا پوست را بدست آوریم. برای این منظور، مقادیر r و g در این بخش از تصویر را به N سطح کوانتایز می‌کنیم. ماتریس H به ابعاد NxN با مقادیر صفر را تشکیل می‌دهیم و سپس تصویر را اسکن کرده و پوست را تشخیص می دهیم.

برای پیاده سازی این پروژه از Matlab استفاده می نماییم.

Hesamoddin Hosseini
