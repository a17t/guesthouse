@{
    Severity     = @('Error', 'Warning')
    ExcludeRules = @(
        # These are small scripts that run once in a guest, and not modules. Their helpers are named for
        # what they do, and nothing calls them from outside.
        'PSUseApprovedVerbs'
        'PSUseSingularNouns'
        'PSUseShouldProcessForStateChangingFunctions'
        # A name the script defines on purpose, in a guest where nothing else loads that module.
        'PSAvoidOverwritingBuiltInCmdlets'
        # Short one-liners in the guest's own scripts, which read worse with the full names.
        'PSAvoidUsingCmdletAliases'
        # The guest tries each step and goes on when one isn't there. The next step reports what is missing.
        'PSAvoidUsingEmptyCatchBlock'
        # The agent exists to run the script the host sends, once the host has shown its token.
        'PSAvoidUsingInvokeExpression'
    )
}
