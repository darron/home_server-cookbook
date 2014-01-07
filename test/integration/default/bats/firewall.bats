#!/usr/bin/env bats

@test "UFW should be active." {
  /usr/sbin/ufw status verbose | grep "Status: active"
}

@test "Look for deny incoming." {
  /usr/sbin/ufw status verbose | grep "Default: deny (incoming), allow (outgoing)"
}

@test "Should only be 10 lines long." {
  result="$(/usr/sbin/ufw status verbose | wc -l)"
  [ $result == '10' ]
}
