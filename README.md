CoffeeLint - Limit number of newlines
===================================

## Description

This [CoffeeLint](http://www.coffeelint.org) plugin checks to make sure there aren't to many blank newlines in your coffeescript file.

## Installation

```sh
[sudo] npm install -g coffeelint-limit-newlines
```
> ***Note:*** *Right now a Coffeelint plugin cannot be installed as a project dependency and must be installed globally. Perhaps this will be improved in a future version of Coffeelint. If you would like to track progress on this enhancement head [over here](https://github.com/clutchski/coffeelint/issues/210).*

## Usage

Insert the below configuration into *coffeelint.json* that you use for linting your scripts:

```js
"limit_newlines": {
    "module": "coffeelint-limit-newlines",
    "level": "error",
    "value": 5 //number of newlines allowed
}
```

## Configuration

The only configuration option specific to this plugin is the **value** property.

By default, Coffeelint will report errors if this rule is not satisfied. You may want to relax this by setting the **level** to **warn** in your configuration.
