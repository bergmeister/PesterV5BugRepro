Repro:

```powershell
powershell
.\repro.ps1
```

Output:
```
Resolve-CoverageInfo : Could not resolve coverage path 'C:\Users\christoph.bergmeiste\git\PesterV5BugRepro\foo\* 
C:\Users\christoph.bergmeiste\git\PesterV5BugRepro\bar\*': The filename, directory name, or volume label syntax is incorrect.
At C:\Users\christoph.bergmeiste\Documents\WindowsPowerShell\Modules\Pester\5.0.0\Pester.psm1:6726 char:5
+     Resolve-CoverageInfo -UnresolvedCoverageInfo $unresolvedCoverageI ...
+     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [Write-Error], WriteErrorException
    + FullyQualifiedErrorId : Microsoft.PowerShell.Commands.WriteErrorException,Resolve-CoverageInfo
 

Starting discovery in 2 files.
Discovering in foo.tests.ps1.
Found 1 tests. 198ms
Discovering in bar.tests.ps1.
Found 1 tests. 40ms
Discovery finished in 505ms.


Running tests from 'foo.tests.ps1'
Describing DescribeName-foo
  [+] ItName-foo 208ms (140ms|68ms)


Running tests from 'bar.tests.ps1'
Describing DescribeName-bar
  [+] ItName-bar 33ms (15ms|18ms)
Tests completed in 1.55s
Tests Passed: 2, Failed: 0, Skipped: 0 NotRun: 0
```