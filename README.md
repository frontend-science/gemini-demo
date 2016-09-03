# Демо gemini для SE2016

## Установка

1. Установите зависимости 

    1) WebDriver server implementation. There are few possible options:
    
    * [Selenium Server](http://docs.seleniumhq.org/download/) – for testing in different browsers.
    * [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/) - for testing in Google Chrome.
    * [PhantomJS](http://phantomjs.org/) — launch with phantomjs --webdriver=4444 command.
    * Cloud WebDriver services, such as [SauceLabs](http://saucelabs.com/) or [BrowserStack](http://www.browserstack.com/)
    
    2) Compiler with support of C++11 (GCC@4.6 or higher). This is a [png-img](https://github.com/gemini-testing/png-img) requirement.
    
2. Склонируйте этот репозиторий и перейдите в его папку:

   ```
   git clone git@github.com:frontend-science/gemini-se2016.git
   cd gemini-se2016
   ```

3. Установите npm-зависимости:
   
   ```
   npm install
   ```

4. Запустите HTTP-сервер

  ```
  npm start
  ```

## Запуск через PhantomJS

1. Установите [PhantomJS](http://phantomjs.org/).
2. Запустите PhantmoJS в режиме WebDriver:

```
phantomjs --webdriver=4444
```

4. Сборка эталонных скриншотов:

   ```
   gemini update --config .gemini-phantomjs.yml
   ```

5. Запуск тестов:

   ```
   gemini test --config .gemini-phantomjs.yml
   ```

6. Тесты с HTML-отчетом

   ```
   gemini test --reporter html --reporter flat  --config .gemini-phantomjs.yml
   ```

## Запуск на SauceLabs

1. Зарегистрируйтесь на [SauceLabs](http://saucelabs.com).
2. Выставьте ваш логин и ключ доступа в переменные окружения:

   ```
   SAUCE_USERNAME=<ваш логин>
   SAUCE_ACCESS_KEY=<ваш ключ доступа>
   ```
3. Скачайте и запустите [SauceConnect](https://docs.saucelabs.com/reference/sauce-connect/).
4. Сборка эталонных скриншотов:

   ```
   gemini update --config .gemini-sl.yml
   ```

5. Запуск тестов:

   ```
   gemini test --config .gemini-sl.yml
   ```

6. Тесты с HTML-отчетом

   ```
   gemini test --reporter html --config .gemini-sl.yml
   ```
