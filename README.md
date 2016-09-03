# Демо gemini для SE2016

## Установка

1. Установите [GraphicsMagick](http://www.graphicsmagick.org/)
   Для MacOS X это можно сделать при помощи [Homebrew](http://brew.sh/):

   ```
   brew install graphicsmagick
   ```

   Установщик для Windows можно найти по [ccылке](http://sourceforge.net/projects/graphicsmagick/files/graphicsmagick-binaries/1.3.19/).

2. Склонируйте этот репозиторий и перейдите в его папку:

   ```
   git clone https://github.com/SevInf/OdessaJS-gemini.git
   cd OdessaJS-gemini
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
   node_modules/.bin/gemini gather
   ```

5. Запуск тестов:

   ```
   node_modules/.bin/gemini test
   ```

6. Тесты с HTML-отчетом

   ```
   node_modules/.bin/gemini test --reporter html
   ```
