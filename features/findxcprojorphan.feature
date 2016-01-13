Feature: Find files orphaned from xcproj

  Scenario: Help
    When I get help for "findxcprojorphan"
    Then the exit status should be 0
    And the banner should be present
    And the banner should document that this app takes options
    And the following options should be documented:
      | --version |
    And the banner should document that this app's arguments are:
      | xcproj_path | which is required |
      | files_glob  | which is required |

  Scenario: No orphaned files
    When I successfully process "NoOrphans/NoOrphans.xcodeproj" with "NoOrphans/**/*.m"
    Then the output should contain all of these lines:
      | No Orphaned Files! |

  Scenario: No orphaned files for that glob
    When I successfully process "Orphans/Orphans.xcodeproj" with "Orphans/**/*.foo"
    Then the output should contain all of these lines:
      | No Orphaned Files! |

  Scenario: Orphaned files
    When I unsuccessfully process "Orphans/Orphans.xcodeproj" with "Orphans/**/*.{m,swift}"
    Then the output should contain all of these lines:
      | These files aren't referenced anywhere in the project: |
      | Orphans/ObjCFile.m                                     |
      | Orphans/SwiftFile.swift                                |