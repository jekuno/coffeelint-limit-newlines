###
begizi/coffeelint-limit-newlines
###

regexes =
    lineHasComment : /^\s*[^\#]*\#/

class RuleProcessor

  rule:
    name:         'limit_newlines'
    description:  'Enforces a newline limit policy'
    level:        'warn'
    message:      'Too many newlines'
    value:         5

  lintLine: (line, lineApi) ->
    emptyLines = lineApi.config[@rule.name].value

    {lineNumber} = lineApi

    return false if regexes.lineHasComment.test(line)
    return false if lineApi.lineHasToken()

    isExcess = false

    for i in [1...emptyLines + 1]
      if lineApi.lineHasToken(null, lineNumber - i)
        isExcess = false
        break
      else
        isExcess = true

    isExcess

module.exports = RuleProcessor
