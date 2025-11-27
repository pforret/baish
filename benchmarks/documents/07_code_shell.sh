#!/usr/bin/env sh

VER=3.1.2

PROJECT_NAME="acme.sh"

PROJECT_ENTRY="acme.sh"

PROJECT="https://github.com/acmesh-official/$PROJECT_NAME"

DEFAULT_INSTALL_HOME="$HOME/.$PROJECT_NAME"

_WINDOWS_SCHEDULER_NAME="$PROJECT_NAME.cron"

_SCRIPT_="$0"

_SUB_FOLDER_NOTIFY="notify"
_SUB_FOLDER_DNSAPI="dnsapi"
_SUB_FOLDER_DEPLOY="deploy"

_SUB_FOLDERS="$_SUB_FOLDER_DNSAPI $_SUB_FOLDER_DEPLOY $_SUB_FOLDER_NOTIFY"

CA_LETSENCRYPT_V2="https://acme-v02.api.letsencrypt.org/directory"
CA_LETSENCRYPT_V2_TEST="https://acme-staging-v02.api.letsencrypt.org/directory"

CA_ZEROSSL="https://acme.zerossl.com/v2/DV90"
_ZERO_EAB_ENDPOINT="https://api.zerossl.com/acme/eab-credentials-email"

CA_SSLCOM_RSA="https://acme.ssl.com/sslcom-dv-rsa"
CA_SSLCOM_ECC="https://acme.ssl.com/sslcom-dv-ecc"

CA_GOOGLE="https://dv.acme-v02.api.pki.goog/directory"
CA_GOOGLE_TEST="https://dv.acme-v02.test-api.pki.goog/directory"

CA_ACTALIS="https://acme-api.actalis.com/acme/directory"

DEFAULT_CA=$CA_ZEROSSL
DEFAULT_STAGING_CA=$CA_LETSENCRYPT_V2_TEST

CA_NAMES="
ZeroSSL.com,zerossl
LetsEncrypt.org,letsencrypt
LetsEncrypt.org_test,letsencrypt_test,letsencrypttest
SSL.com,sslcom
Google.com,google
Google.com_test,googletest,google_test
Actalis.com,actalis.com,actalis
"

CA_SERVERS="$CA_ZEROSSL,$CA_LETSENCRYPT_V2,$CA_LETSENCRYPT_V2_TEST,$CA_SSLCOM_RSA,$CA_GOOGLE,$CA_GOOGLE_TEST,$CA_ACTALIS"

DEFAULT_USER_AGENT="$PROJECT_NAME/$VER ($PROJECT)"

DEFAULT_ACCOUNT_KEY_LENGTH=ec-256
DEFAULT_DOMAIN_KEY_LENGTH=ec-256

DEFAULT_OPENSSL_BIN="openssl"

VTYPE_HTTP="http-01"
VTYPE_DNS="dns-01"
VTYPE_ALPN="tls-alpn-01"

ID_TYPE_DNS="dns"
ID_TYPE_IP="ip"

LOCAL_ANY_ADDRESS="0.0.0.0"

DEFAULT_RENEW=60

NO_VALUE="no"

W_DNS="dns"
W_ALPN="alpn"
DNS_ALIAS_PREFIX="="

MODE_STATELESS="stateless"

STATE_VERIFIED="verified_ok"

NGINX="nginx:"
NGINX_START="#ACME_NGINX_START"
NGINX_END="#ACME_NGINX_END"

BEGIN_CSR="-----BEGIN [NEW ]\{0,4\}CERTIFICATE REQUEST-----"
END_CSR="-----END [NEW ]\{0,4\}CERTIFICATE REQUEST-----"

BEGIN_CERT="-----BEGIN CERTIFICATE-----"
END_CERT="-----END CERTIFICATE-----"

CONTENT_TYPE_JSON="application/jose+json"
RENEW_SKIP=2
CODE_DNS_MANUAL=3

B64CONF_START="__ACME_BASE64__START_"
B64CONF_END="__ACME_BASE64__END_"

ECC_SEP="_"
ECC_SUFFIX="${ECC_SEP}ecc"

LOG_LEVEL_1=1
LOG_LEVEL_2=2
LOG_LEVEL_3=3
DEFAULT_LOG_LEVEL="$LOG_LEVEL_2"

DEBUG_LEVEL_1=1
DEBUG_LEVEL_2=2
DEBUG_LEVEL_3=3
DEBUG_LEVEL_DEFAULT=$DEBUG_LEVEL_2
DEBUG_LEVEL_NONE=0

DOH_CLOUDFLARE=1
DOH_GOOGLE=2
DOH_ALI=3
DOH_DP=4

HIDDEN_VALUE="[hidden](please add '--output-insecure' to see this value)"

SYSLOG_ERROR="user.error"
SYSLOG_INFO="user.info"
SYSLOG_DEBUG="user.debug"

#error
SYSLOG_LEVEL_ERROR=3
#info
SYSLOG_LEVEL_INFO=6
#debug
SYSLOG_LEVEL_DEBUG=7
#debug2
SYSLOG_LEVEL_DEBUG_2=8
#debug3
SYSLOG_LEVEL_DEBUG_3=9

SYSLOG_LEVEL_DEFAULT=$SYSLOG_LEVEL_ERROR
#none
SYSLOG_LEVEL_NONE=0

NOTIFY_LEVEL_DISABLE=0
NOTIFY_LEVEL_ERROR=1
NOTIFY_LEVEL_RENEW=2
NOTIFY_LEVEL_SKIP=3

NOTIFY_LEVEL_DEFAULT=$NOTIFY_LEVEL_RENEW

NOTIFY_MODE_BULK=0
NOTIFY_MODE_CERT=1

NOTIFY_MODE_DEFAULT=$NOTIFY_MODE_BULK

_BASE64_ENCODED_CFGS="Le_PreHook Le_PostHook Le_RenewHook Le_Preferred_Chain Le_ReloadCmd"

_DEBUG_WIKI="https://github.com/acmesh-official/acme.sh/wiki/How-to-debug-acme.sh"

_PREPARE_LINK="https://github.com/acmesh-official/acme.sh/wiki/Install-preparations"

_STATELESS_WIKI="https://github.com/acmesh-official/acme.sh/wiki/Stateless-Mode"

_DNS_ALIAS_WIKI="https://github.com/acmesh-official/acme.sh/wiki/DNS-alias-mode"

_DNS_MANUAL_WIKI="https://github.com/acmesh-official/acme.sh/wiki/dns-manual-mode"

_DNS_API_WIKI="https://github.com/acmesh-official/acme.sh/wiki/dnsapi"

_NOTIFY_WIKI="https://github.com/acmesh-official/acme.sh/wiki/notify"

_SUDO_WIKI="https://github.com/acmesh-official/acme.sh/wiki/sudo"

_REVOKE_WIKI="https://github.com/acmesh-official/acme.sh/wiki/revokecert"

_ZEROSSL_WIKI="https://github.com/acmesh-official/acme.sh/wiki/ZeroSSL.com-CA"

_SSLCOM_WIKI="https://github.com/acmesh-official/acme.sh/wiki/SSL.com-CA"

_SERVER_WIKI="https://github.com/acmesh-official/acme.sh/wiki/Server"

_PREFERRED_CHAIN_WIKI="https://github.com/acmesh-official/acme.sh/wiki/Preferred-Chain"

_VALIDITY_WIKI="https://github.com/acmesh-official/acme.sh/wiki/Validity"

_DNSCHECK_WIKI="https://github.com/acmesh-official/acme.sh/wiki/dnscheck"

_PROFILESELECTION_WIKI="https://github.com/acmesh-official/acme.sh/wiki/Profile-selection"

_DNS_MANUAL_ERR="The dns manual mode can not renew automatically, you must issue it again manually. You'd better use the other modes instead."

_DNS_MANUAL_WARN="It seems that you are using dns manual mode. please take care: $_DNS_MANUAL_ERR"

_DNS_MANUAL_ERROR="It seems that you are using dns manual mode. Read this link first: $_DNS_MANUAL_WIKI"

__INTERACTIVE=""
if [ -t 1 ]; then
  __INTERACTIVE="1"
fi

__green() {
  if [ "${__INTERACTIVE}${ACME_NO_COLOR:-0}" = "10" -o "${ACME_FORCE_COLOR}" = "1" ]; then
    printf '\33[1;32m%b\33[0m' "$1"
    return
  fi
  printf -- "%b" "$1"
}

__red() {
  if [ "${__INTERACTIVE}${ACME_NO_COLOR:-0}" = "10" -o "${ACME_FORCE_COLOR}" = "1" ]; then
    printf '\33[1;31m%b\33[0m' "$1"
    return
  fi
  printf -- "%b" "$1"
}

_printargs() {
  _exitstatus="$?"
  if [ -z "$NO_TIMESTAMP" ] || [ "$NO_TIMESTAMP" = "0" ]; then
    printf -- "%s" "[$(date)] "
  fi
  if [ -z "$2" ]; then
    printf -- "%s" "$1"
  else
    printf -- "%s" "$1='$2'"
  fi
  printf "\n"
  # return the saved exit status
  return "$_exitstatus"
}

_dlg_versions() {
  echo "Diagnosis versions: "
  echo "openssl:$ACME_OPENSSL_BIN"
  if _exists "${ACME_OPENSSL_BIN:-openssl}"; then
    ${ACME_OPENSSL_BIN:-openssl} version 2>&1
  else
    echo "$ACME_OPENSSL_BIN doesn't exist."
  fi

  echo "Apache:"
  if [ "$_APACHECTL" ] && _exists "$_APACHECTL"; then
    $_APACHECTL -V 2>&1
  else
    echo "Apache doesn't exist."
  fi

  echo "nginx:"
  if _exists "nginx"; then
    nginx -V 2>&1
  else
    echo "nginx doesn't exist."
  fi

  echo "socat:"
  if _exists "socat"; then
    socat -V 2>&1
  else
    _debug "socat doesn't exist."
  fi
}

#class
_syslog() {
  _exitstatus="$?"
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" = "$SYSLOG_LEVEL_NONE" ]; then
    return
  fi
  _logclass="$1"
  shift
  if [ -z "$__logger_i" ]; then
    if _contains "$(logger --help 2>&1)" "-i"; then
      __logger_i="logger -i"
    else
      __logger_i="logger"
    fi
  fi
  $__logger_i -t "$PROJECT_NAME" -p "$_logclass" "$(_printargs "$@")" >/dev/null 2>&1
  return "$_exitstatus"
}

_log() {
  [ -z "$LOG_FILE" ] && return
  _printargs "$@" >>"$LOG_FILE"
}

_info() {
  _log "$@"
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_INFO" ]; then
    _syslog "$SYSLOG_INFO" "$@"
  fi
  _printargs "$@"
}

_err() {
  _syslog "$SYSLOG_ERROR" "$@"
  _log "$@"
  if [ -z "$NO_TIMESTAMP" ] || [ "$NO_TIMESTAMP" = "0" ]; then
    printf -- "%s" "[$(date)] " >&2
  fi
  if [ -z "$2" ]; then
    __red "$1" >&2
  else
    __red "$1='$2'" >&2
  fi
  printf "\n" >&2
  return 1
}

_usage() {
  __red "$@" >&2
  printf "\n" >&2
}

__debug_bash_helper() {
  # At this point only do for --debug 3
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -lt "$DEBUG_LEVEL_3" ]; then
    return
  fi
  # Return extra debug info when running with bash, otherwise return empty
  # string.
  if [ -z "${BASH_VERSION}" ]; then
    return
  fi
  # We are a bash shell at this point, return the filename, function name, and
  # line number as a string
  _dbh_saveIFS=$IFS
  IFS=" "
  # Must use eval or syntax error happens under dash. The eval should use
  # single quotes as older versions of busybox had a bug with double quotes and
  # eval.
  # Use 'caller 1' as we want one level up the stack as we should be called
  # by one of the _debug* functions
  eval '_dbh_called=($(caller 1))'
  IFS=$_dbh_saveIFS
  eval '_dbh_file=${_dbh_called[2]}'
  if [ -n "${_script_home}" ]; then
    # Trim off the _script_home directory name
    eval '_dbh_file=${_dbh_file#$_script_home/}'
  fi
  eval '_dbh_function=${_dbh_called[1]}'
  eval '_dbh_lineno=${_dbh_called[0]}'
  printf "%-40s " "$_dbh_file:${_dbh_function}:${_dbh_lineno}"
}

_debug() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_1" ]; then
    _log "$@"
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG" ]; then
    _syslog "$SYSLOG_DEBUG" "$@"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_1" ]; then
    _bash_debug=$(__debug_bash_helper)
    _printargs "${_bash_debug}$@" >&2
  fi
}

#output the sensitive messages
_secure_debug() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_1" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _log "$@"
    else
      _log "$1" "$HIDDEN_VALUE"
    fi
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG" ]; then
    _syslog "$SYSLOG_DEBUG" "$1" "$HIDDEN_VALUE"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_1" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _printargs "$@" >&2
    else
      _printargs "$1" "$HIDDEN_VALUE" >&2
    fi
  fi
}

_debug2() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_2" ]; then
    _log "$@"
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG_2" ]; then
    _syslog "$SYSLOG_DEBUG" "$@"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_2" ]; then
    _bash_debug=$(__debug_bash_helper)
    _printargs "${_bash_debug}$@" >&2
  fi
}

_secure_debug2() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_2" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _log "$@"
    else
      _log "$1" "$HIDDEN_VALUE"
    fi
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG_2" ]; then
    _syslog "$SYSLOG_DEBUG" "$1" "$HIDDEN_VALUE"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_2" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _printargs "$@" >&2
    else
      _printargs "$1" "$HIDDEN_VALUE" >&2
    fi
  fi
}

_debug3() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_3" ]; then
    _log "$@"
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG_3" ]; then
    _syslog "$SYSLOG_DEBUG" "$@"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_3" ]; then
    _bash_debug=$(__debug_bash_helper)
    _printargs "${_bash_debug}$@" >&2
  fi
}

_secure_debug3() {
  if [ "${LOG_LEVEL:-$DEFAULT_LOG_LEVEL}" -ge "$LOG_LEVEL_3" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _log "$@"
    else
      _log "$1" "$HIDDEN_VALUE"
    fi
  fi
  if [ "${SYS_LOG:-$SYSLOG_LEVEL_NONE}" -ge "$SYSLOG_LEVEL_DEBUG_3" ]; then
    _syslog "$SYSLOG_DEBUG" "$1" "$HIDDEN_VALUE"
  fi
  if [ "${DEBUG:-$DEBUG_LEVEL_NONE}" -ge "$DEBUG_LEVEL_3" ]; then
    if [ "$OUTPUT_INSECURE" = "1" ]; then
      _printargs "$@" >&2
    else
      _printargs "$1" "$HIDDEN_VALUE" >&2
    fi
  fi
}

__USE_TR_TAG=""
if [ "$(echo "abc" | LANG=C tr a-z A-Z 2>/dev/null)" != "ABC" ]; then
  __USE_TR_TAG="1"
fi
export __USE_TR_TAG

_upper_case() {
  if [ "$__USE_TR_TAG" ]; then
    LANG=C tr '[:lower:]' '[:upper:]'
  else
    # shellcheck disable=SC2018,SC2019
    LANG=C tr '[a-z]' '[A-Z]'
  fi
}

_lower_case() {
  if [ "$__USE_TR_TAG" ]; then
    LANG=C tr '[:upper:]' '[:lower:]'
  else
    # shellcheck disable=SC2018,SC2019
    LANG=C tr '[A-Z]' '[a-z]'
  fi
}

_startswith() {
  _str="$1"
  _sub="$2"
  echo "$_str" | grep -- "^$_sub" >/dev/null 2>&1
}

_endswith() {
  _str="$1"
  _sub="$2"
  echo "$_str" | grep -- "$_sub\$" >/dev/null 2>&1
}

_contains() {
  _str="$1"
  _sub="$2"
  echo "$_str" | grep -- "$_sub" >/dev/null 2>&1
}

_hasfield() {
  _str="$1"
  _field="$2"
  _sep="$3"
  if [ -z "$_field" ]; then
    _usage "Usage: str field  [sep]"
    return 1
  fi

  if [ -z "$_sep" ]; then
    _sep=","
  fi

  for f in $(echo "$_str" | tr "$_sep" ' '); do
    if [ "$f" = "$_field" ]; then
      _debug2 "'$_str' contains '$_field'"
      return 0 #contains ok
    fi
  done
  _debug2 "'$_str' does not contain '$_field'"
  return 1 #not contains
}

# str index [sep]
_getfield() {
  _str="$1"
  _findex="$2"
  _sep="$3"

  if [ -z "$_findex" ]; then
    _usage "Usage: str field  [sep]"
    return 1
  fi

  if [ -z "$_sep" ]; then
    _sep=","
  fi

  _ffi="$_findex"
  while [ "$_ffi" -gt "0" ]; do
    _fv="$(echo "$_str" | cut -d "$_sep" -f "$_ffi")"
    if [ "$_fv" ]; then
      printf -- "%s" "$_fv"
      return 0
    fi
    _ffi="$(_math "$_ffi" - 1)"
  done

  printf -- "%s" "$_str"

}

_exists() {
  cmd="$1"
  if [ -z "$cmd" ]; then
    _usage "Usage: _exists cmd"
    return 1
  fi

  if eval type type >/dev/null 2>&1; then
    eval type "$cmd" >/dev/null 2>&1
  elif command >/dev/null 2>&1; then
    command -v "$cmd" >/dev/null 2>&1
  else
    which "$cmd" >/dev/null 2>&1
  fi
  ret="$?"
  _debug3 "$cmd exists=$ret"
  return $ret
}

#a + b
_math() {
  _m_opts="$@"
  printf "%s" "$(($_m_opts))"
}

_h_char_2_dec() {
  _ch=$1
  case "${_ch}" in
  a | A)
    printf "10"
    ;;
  b | B)
    printf "11"
    ;;
  c | C)
    printf "12"
    ;;
  d | D)
    printf "13"
    ;;
  e | E)
    printf "14"
    ;;
  f | F)
    printf "15"
    ;;
  *)
    printf "%s" "$_ch"
    ;;
  esac

}

_URGLY_PRINTF=""
if [ "$(printf '\x41')" != 'A' ]; then
  _URGLY_PRINTF=1
fi

_ESCAPE_XARGS=""
if _exists xargs && [ "$(printf %s '\\x41' | xargs printf)" = 'A' ]; then
  _ESCAPE_XARGS=1
fi

_h2b() {
  if _exists xxd; then
    if _contains "$(xxd --help 2>&1)" "assumes -c30"; then
      if xxd -r -p -c 9999 2>/dev/null; then
        return
      fi
    else
      if xxd -r -p 2>/dev/null; then
        return
      fi
    fi
  fi

  hex=$(cat)
  ic=""
  jc=""
  _debug2 _URGLY_PRINTF "$_URGLY_PRINTF"
  if [ -z "$_URGLY_PRINTF" ]; then
    if [ "$_ESCAPE_XARGS" ] && _exists xargs; then
      _debug2 "xargs"
      echo "$hex" | _upper_case | sed 's/\([0-9A-F]\{2\}\)/\\\\\\x\1/g' | xargs printf
    else
      for h in $(echo "$hex" | _upper_case | sed 's/\([0-9A-F]\{2\}\)/ \1/g'); do
        if [ -z "$h" ]; then
          break
        fi
        printf "\x$h%s"
      done
    fi
  else
    for c in $(echo "$hex" | _upper_case | sed 's/\([0-9A-F]\)/ \1/g'); do
      if [ -z "$ic" ]; then
        ic=$c
        continue
      fi
      jc=$c
      ic="$(_h_char_2_dec "$ic")"
      jc="$(_h_char_2_dec "$jc")"
      printf '\'"$(printf "%o" "$(_math "$ic" \* 16 + $jc)")""%s"
      ic=""
      jc=""
    done
  fi

}

_is_solaris() {
  _contains "${__OS__:=$(uname -a)}" "solaris" || _contains "${__OS__:=$(uname -a)}" "SunOS"
}

#_ascii_hex str
#this can only process ascii chars, should only be used when od command is missing as a backup way.
_ascii_hex() {
  _debug2 "Using _ascii_hex"
  _str="$1"
  _str_len=${#_str}
  _h_i=1
  while [ "$_h_i" -le "$_str_len" ]; do
    _str_c="$(printf "%s" "$_str" | cut -c "$_h_i")"
    printf " %02x" "'$_str_c"
    _h_i="$(_math "$_h_i" + 1)"
  done
}

#stdin  output hexstr splited by one space
#input:"abc"
#output: " 61 62 63"
_hex_dump() {
  if _exists od; then
    od -A n -v -t x1 | tr -s " " | sed 's/ $//' | tr -d "\r\t\n"
  elif _exists hexdump; then
    _debug3 "using hexdump"
    hexdump -v -e '/1 ""' -e '/1 " %02x" ""'
  elif _exists xxd; then
    _debug3 "using xxd"
    xxd -ps -c 20 -i | sed "s/ 0x/ /g" | tr -d ",\n" | tr -s " "
  else
    _debug3 "using _ascii_hex"
    str=$(cat)
    _ascii_hex "$str"
  fi
}

#url encode, no-preserved chars
#A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z
#41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a

#a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
#61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f 70 71 72 73 74 75 76 77 78 79 7a

#0  1  2  3  4  5  6  7  8  9  -  _  .  ~
#30 31 32 33 34 35 36 37 38 39 2d 5f 2e 7e

#_url_encode [upper-hex]  the encoded hex will be upper-case if the argument upper-hex is followed
#stdin stdout
_url_encode() {
  _upper_hex=$1
  _hex_str=$(_hex_dump)
  _debug3 "_url_encode"
  _debug3 "_hex_str" "$_hex_str"
  for _hex_code in $_hex_str; do
    #upper case
    case "${_hex_code}" in
    "41")
      printf "%s" "A"
      ;;
    "42")
      printf "%s" "B"
      ;;
    "43")
      printf "%s" "C"
      ;;
    "44")
      printf "%s" "D"
      ;;
    "45")
      printf "%s" "E"
      ;;
    "46")
      printf "%s" "F"
      ;;
    "47")
      printf "%s" "G"
      ;;
    "48")
      printf "%s" "H"
      ;;
    "49")
      printf "%s" "I"
      ;;
    "4a")
      printf "%s" "J"
      ;;
    "4b")
      printf "%s" "K"
      ;;
    "4c")
      printf "%s" "L"
      ;;
    "4d")
      printf "%s" "M"
      ;;
    "4e")
      printf "%s" "N"
      ;;
    "4f")
      printf "%s" "O"
      ;;
    "50")
      printf "%s" "P"
      ;;
    "51")
      printf "%s" "Q"
      ;;
    "52")
      printf "%s" "R"
      ;;
    "53")
      printf "%s" "S"
      ;;
    "54")
      printf "%s" "T"
      ;;
    "55")
      printf "%s" "U"
      ;;
    "56")
      printf "%s" "V"
      ;;
    "57")
      printf "%s" "W"
      ;;
    "58")
      printf "%s" "X"
      ;;
    "59")
      printf "%s" "Y"
      ;;
    "5a")
      printf "%s" "Z"
      ;;

      #lower case
    "61")
      printf "%s" "a"
      ;;
    "62")
      printf "%s" "b"
      ;;
    "63")
      printf "%s" "c"
      ;;
    "64")
      printf "%s" "d"
      ;;
    "65")
      printf "%s" "e"
      ;;
    "66")
      printf "%s" "f"
      ;;
    "67")
      printf "%s" "g"
      ;;
    "68")
      printf "%s" "h"
      ;;
    "69")
      printf "%s" "i"
      ;;
    "6a")
      printf "%s" "j"
      ;;
    "6b")
      printf "%s" "k"
      ;;
    "6c")
      printf "%s" "l"
      ;;
    "6d")
      printf "%s" "m"
      ;;
    "6e")
      printf "%s" "n"
      ;;
    "6f")
      printf "%s" "o"
      ;;
    "70")
      printf "%s" "p"
      ;;
    "71")
      printf "%s" "q"
      ;;
    "72")
      printf "%s" "r"
      ;;
    "73")
      printf "%s" "s"
      ;;
    "74")
      printf "%s" "t"
      ;;
    "75")
      printf "%s" "u"
      ;;
    "76")
      printf "%s" "v"
      ;;
    "77")
      printf "%s" "w"
      ;;
    "78")
      printf "%s" "x"
      ;;
    "79")
      printf "%s" "y"
      ;;
    "7a")
      printf "%s" "z"
      ;;
      #numbers
    "30")
      printf "%s" "0"
      ;;
    "31")
      printf "%s" "1"
      ;;
    "32")
      printf "%s" "2"
      ;;
    "33")
      printf "%s" "3"
      ;;
    "34")
      printf "%s" "4"
      ;;
    "35")
      printf "%s" "5"
      ;;
    "36")
      printf "%s" "6"
      ;;
    "37")
      printf "%s" "7"
      ;;
    "38")
      printf "%s" "8"
      ;;
    "39")
      printf "%s" "9"
      ;;
    "2d")
      printf "%s" "-"
      ;;
    "5f")
      printf "%s" "_"
      ;;
    "2e")
      printf "%s" "."
      ;;
    "7e")
      printf "%s" "~"
      ;;
    #other hex
    *)
      if [ "$_upper_hex" = "upper-hex" ]; then
        _hex_code=$(printf "%s" "$_hex_code" | _upper_case)
      fi
      printf '%%%s' "$_hex_code"
      ;;
    esac
  done
}

_json_encode() {
  _j_str="$(sed 's/"/\\"/g' | sed "s/\r/\\r/g")"
  _debug3 "_json_encode"
  _debug3 "_j_str" "$_j_str"
  echo "$_j_str" | _hex_dump | _lower_case | sed 's/0a/5c 6e/g' | tr -d ' ' | _h2b | tr -d "\r\n"
}

#from: http:\/\/  to http://
_json_decode() {
  _j_str="$(sed 's#\\/#/#g')"
  _debug3 "_json_decode"
  _debug3 "_j_str" "$_j_str"
  echo "$_j_str"
}

#options file
_sed_i() {
  options="$1"
  filename="$2"
  if [ -z "$filename" ]; then
    _usage "Usage:_sed_i options filename"
    return 1
  fi
  _debug2 options "$options"
  if sed -h 2>&1 | grep "\-i\[SUFFIX]" >/dev/null 2>&1; then
    _debug "Using sed  -i"
    sed -i "$options" "$filename"
  elif sed -h 2>&1 | grep "\-i extension" >/dev/null 2>&1; then
    _debug "Using FreeBSD sed -i"
    sed -i "" "$options" "$filename"
  else
    _debug "No -i support in sed"
    text="$(cat "$filename")"
    echo "$text" | sed "$options" >"$filename"
  fi
}

if [ "$(echo abc | egrep -o b 2>/dev/null)" = "b" ]; then
  __USE_EGREP=1
else
  __USE_EGREP=""
fi

_egrep_o() {
  if [ "$__USE_EGREP" ]; then
    egrep -o -- "$1" 2>/dev/null
  else
    sed -n 's/.*\('"$1"'\).*/\1/p'
  fi
}

#Usage: file startline endline
_getfile() {
  filename="$1"
  startline="$2"
  endline="$3"
  if [ -z "$endline" ]; then
    _usage "Usage: file startline endline"
    return 1
  fi

  i="$(grep -n -- "$startline" "$filename" | cut -d : -f 1)"
  if [ -z "$i" ]; then
    _err "Cannot find start line: $startline"
    return 1
  fi
  i="$(_math "$i" + 1)"
  _debug i "$i"

  j="$(grep -n -- "$endline" "$filename" | cut -d : -f 1)"
  if [ -z "$j" ]; then
    _err "Cannot find end line: $endline"
    return 1
  fi
  j="$(_math "$j" - 1)"
  _debug j "$j"

  sed -n "$i,${j}p" "$filename"

}

#Usage: multiline
_base64() {
  [ "" ] #urgly
  if [ "$1" ]; then
    _debug3 "base64 multiline:'$1'"
    ${ACME_OPENSSL_BIN:-openssl} base64 -e
  else
    _debug3 "base64 single line."
    ${ACME_OPENSSL_BIN:-openssl} base64 -e | tr -d '\r\n'
  fi
}

#Usage: multiline
_dbase64() {
  if [ "$1" ]; then
    ${ACME_OPENSSL_BIN:-openssl} base64 -d
  else
    ${ACME_OPENSSL_BIN:-openssl} base64 -d -A
  fi
}

#file
_checkcert() {
  _cf="$1"
  if [ "$DEBUG" ]; then
    ${ACME_OPENSSL_BIN:-openssl} x509 -noout -text -in "$_cf"
  else
    ${ACME_OPENSSL_BIN:-openssl} x509 -noout -text -in "$_cf" >/dev/null 2>&1
  fi
}

#Usage: hashalg  [outputhex]
#Output Base64-encoded digest
_digest() {
  alg="$1"
  if [ -z "$alg" ]; then
    _usage "Usage: _digest hashalg"
    return 1
  fi

  outputhex="$2"

  if [ "$alg" = "sha256" ] || [ "$alg" = "sha1" ] || [ "$alg" = "md5" ]; then
    if [ "$outputhex" ]; then
      ${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -hex | cut -d = -f 2 | tr -d ' '
    else
      ${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -binary | _base64
    fi
  else
    _err "$alg is not supported yet"
    return 1
  fi

}

#Usage: hashalg  secret_hex  [outputhex]
#Output binary hmac
_hmac() {
  alg="$1"
  secret_hex="$2"
  outputhex="$3"

  if [ -z "$secret_hex" ]; then
    _usage "Usage: _hmac hashalg secret [outputhex]"
    return 1
  fi

  if [ "$alg" = "sha256" ] || [ "$alg" = "sha1" ]; then
    if [ "$outputhex" ]; then
      (${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -mac HMAC -macopt "hexkey:$secret_hex" 2>/dev/null || ${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -hmac "$(printf "%s" "$secret_hex" | _h2b)") | cut -d = -f 2 | tr -d ' '
    else
      ${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -mac HMAC -macopt "hexkey:$secret_hex" -binary 2>/dev/null || ${ACME_OPENSSL_BIN:-openssl} dgst -"$alg" -hmac "$(printf "%s" "$secret_hex" | _h2b)" -binary
    fi
  else
    _err "$alg is not supported yet"
    return 1
  fi

}

#Usage: keyfile hashalg
#Output: Base64-encoded signature value
_sign() {
  keyfile="$1"
  alg="$2"
  if [ -z "$alg" ]; then
    _usage "Usage: _sign keyfile hashalg"
    return 1
  fi

  _sign_openssl="${ACME_OPENSSL_BIN:-openssl} dgst -sign $keyfile "

  if _isRSA "$keyfile" >/dev/null 2>&1; then
    $_sign_openssl -$alg | _base64
  elif _isEcc "$keyfile" >/dev/null 2>&1; then
    if ! _signedECText="$($_sign_openssl -sha$__ECC_KEY_LEN | ${ACME_OPENSSL_BIN:-openssl} asn1parse -inform DER)"; then
      _err "Sign failed: $_sign_openssl"
      _err "Key file: $keyfile"
      _err "Key content: $(wc -l <"$keyfile") lines"
      return 1
    fi
    _debug3 "_signedECText" "$_signedECText"
    _ec_r="$(echo "$_signedECText" | _head_n 2 | _tail_n 1 | cut -d : -f 4 | tr -d "\r\n")"
    _ec_s="$(echo "$_signedECText" | _head_n 3 | _tail_n 1 | cut -d : -f 4 | tr -d "\r\n")"
    if [ "$__ECC_KEY_LEN" -eq "256" ]; then
      while [ "${#_ec_r}" -lt "64" ]; do
        _ec_r="0${_ec_r}"
      done
      while [ "${#_ec_s}" -lt "64" ]; do
        _ec_s="0${_ec_s}"
      done
    fi
    if [ "$__ECC_KEY_LEN" -eq "384" ]; then
      while [ "${#_ec_r}" -lt "96" ]; do
        _ec_r="0${_ec_r}"
      done
      while [ "${#_ec_s}" -lt "96" ]; do
        _ec_s="0${_ec_s}"
      done
    fi
    if [ "$__ECC_KEY_LEN" -eq "512" ]; then
      while [ "${#_ec_r}" -lt "132" ]; do
        _ec_r="0${_ec_r}"
      done
      while [ "${#_ec_s}" -lt "132" ]; do
        _ec_s="0${_ec_s}"
      done
    fi
    _debug3 "_ec_r" "$_ec_r"
    _debug3 "_ec_s" "$_ec_s"
    printf "%s" "$_ec_r$_ec_s" | _h2b | _base64
  else
    _err "Unknown key file format."
    return 1
  fi

}

#keylength or isEcc flag (empty str => not ecc)
_isEccKey() {
  _length="$1"

  if [ -z "$_length" ]; then
    return 1
  fi

  [ "$_length" != "1024" ] &&
    [ "$_length" != "2048" ] &&
    [ "$_length" != "3072" ] &&
    [ "$_length" != "4096" ] &&
    [ "$_length" != "8192" ]
}

# _createkey  2048|ec-256   file
_createkey() {
  length="$1"
  f="$2"
  _debug2 "_createkey for file:$f"
  eccname="$length"
  if _startswith "$length" "ec-"; then
    length=$(printf "%s" "$length" | cut -d '-' -f 2-100)

    if [ "$length" = "256" ]; then
      eccname="prime256v1"
    fi
    if [ "$length" = "384" ]; then
      eccname="secp384r1"
    fi
    if [ "$length" = "521" ]; then
      eccname="secp521r1"
    fi

  fi

  if [ -z "$length" ]; then
    length=2048
  fi

  _debug "Using length $length"

  if ! [ -e "$f" ]; then
    if ! touch "$f" >/dev/null 2>&1; then
      _f_path="$(dirname "$f")"
      _debug _f_path "$_f_path"
      if ! mkdir -p "$_f_path"; then
        _err "Cannot create path: $_f_path"
        return 1
      fi
    fi
    if ! touch "$f" >/dev/null 2>&1; then
      return 1
    fi
    chmod 600 "$f"
  fi

  if _isEccKey "$length"; then
    _debug "Using EC name: $eccname"
    if _opkey="$(${ACME_OPENSSL_BIN:-openssl} ecparam -name "$eccname" -noout -genkey 2>/dev/null)"; then
      echo "$_opkey" >"$f"
    else
      _err "Error encountered for ECC key named $eccname"
      return 1
    fi
  else
    _debug "Using RSA: $length"
    __traditional=""
    if _contains "$(${ACME_OPENSSL_BIN:-openssl} help genrsa 2>&1)" "-traditional"; then
      __traditional="-traditional"
    fi
    if _opkey="$(${ACME_OPENSSL_BIN:-openssl} genrsa $__traditional "$length" 2>/dev/null)"; then
      echo "$_opkey" >"$f"
    else
      _err "Error encountered for RSA key of length $length"
      return 1
    fi
  fi

  if [ "$?" != "0" ]; then
    _err "Key creation error."
    return 1
  fi
}

#domain
_is_idn() {
  _is_idn_d="$1"
  _debug2 _is_idn_d "$_is_idn_d"
  _idn_temp=$(printf "%s" "$_is_idn_d" | tr -d '[0-9]' | tr -d '[a-z]' | tr -d '[A-Z]' | tr -d '*.,-_')
  _debug2 _idn_temp "$_idn_temp"
  [ "$_idn_temp" ]
}

#aa.com
#aa.com,bb.com,cc.com
_idn() {
  __idn_d="$1"
  if ! _is_idn "$__idn_d"; then
    printf "%s" "$__idn_d"
    return 0
  fi

  if _exists idn; then
    if _contains "$__idn_d" ','; then
      _i_first="1"
      for f in $(echo "$__idn_d" | tr ',' ' '); do
        [ -z "$f" ] && continue
        if [ -z "$_i_first" ]; then
          printf "%s" ","
        else
          _i_first=""
        fi
        idn --quiet "$f" | tr -d "\r\n"
      done
    else
      idn "$__idn_d" | tr -d "\r\n"
    fi
  else
    _err "Please install idn to process IDN names."
  fi
}

#_createcsr  cn  san_list  keyfile csrfile conf acmeValidationv1 extendedUsage
_createcsr() {
  _debug _createcsr
  domain="$1"
  domainlist="$2"
  csrkey="$3"
  csr="$4"
  csrconf="$5"
  acmeValidationv1="$6"
  extusage="$7"
  _debug2 domain "$domain"
  _debug2 domainlist "$domainlist"
  _debug2 csrkey "$csrkey"
  _debug2 csr "$csr"
  _debug2 csrconf "$csrconf"

  printf "[ req_distinguished_name ]\n[ req ]\ndistinguished_name = req_distinguished_name\nreq_extensions = v3_req\n[ v3_req ]" >"$csrconf"

  if [ "$extusage" ]; then
    printf "\nextendedKeyUsage=$extusage\n" >>"$csrconf"
  else
    printf "\nextendedKeyUsage=serverAuth,clientAuth\n" >>"$csrconf"
  fi

  if [ "$acmeValidationv1" ]; then
    domainlist="$(_idn "$domainlist")"
    _debug2 domainlist "$domainlist"
    alt=""
    for dl in $(echo "$domainlist" | tr "," ' '); do
      if [ "$alt" ]; then
        alt="$alt,$(_getIdType "$dl" | _upper_case):$dl"
      else
        alt="$(_getIdType "$dl" | _upper_case):$dl"
      fi
    done
    printf -- "\nsubjectAltName=$alt" >>"$csrconf"
  elif [ -z "$domainlist" ] || [ "$domainlist" = "$NO_VALUE" ]; then
    #single domain
    _info "Single domain" "$domain"
    printf -- "\nsubjectAltName=$(_getIdType "$domain" | _upper_case):$(_idn "$domain")" >>"$csrconf"
  else
    domainlist="$(_idn "$domainlist")"
    _debug2 domainlist "$domainlist"
    alt="$(_getIdType "$domain" | _upper_case):$(_idn "$domain")"
    for dl in $(echo "'$domainlist'" | sed "s/,/' '/g"); do
      dl=$(echo "$dl" | tr -d "'")
      alt="$alt,$(_getIdType "$dl" | _upper_case):$dl"
    done
    #multi
    _info "Multi domain" "$alt"
    printf -- "\nsubjectAltName=$alt" >>"$csrconf"
  fi
  if [ "$Le_OCSP_Staple" = "1" ]; then
    _savedomainconf Le_OCSP_Staple "$Le_OCSP_Staple"
    printf -- "\nbasicConstraints = CA:FALSE\n1.3.6.1.5.5.7.1.24=DER:30:03:02:01:05" >>"$csrconf"
  fi

  if [ "$acmeValidationv1" ]; then
    printf "\n1.3.6.1.5.5.7.1.31=critical,DER:04:20:${acmeValidationv1}" >>"${csrconf}"
  fi

  _csr_cn="$(_idn "$domain")"
  _debug2 _csr_cn "$_csr_cn"
  if _contains "$(uname -a)" "MINGW"; then
    if _isIP "$_csr_cn"; then
      ${ACME_OPENSSL_BIN:-openssl} req -new -sha256 -key "$csrkey" -subj "//O=$PROJECT_NAME" -config "$csrconf" -out "$csr"
    else
      ${ACME_OPENSSL_BIN:-openssl} req -new -sha256 -key "$csrkey" -subj "//CN=$_csr_cn" -config "$csrconf" -out "$csr"
    fi
  else
    if _isIP "$_csr_cn"; then
      ${ACME_OPENSSL_BIN:-openssl} req -new -sha256 -key "$csrkey" -subj "/O=$PROJECT_NAME" -config "$csrconf" -out "$csr"
    else
      ${ACME_OPENSSL_BIN:-openssl} req -new -sha256 -key "$csrkey" -subj "/CN=$_csr_cn" -config "$csrconf" -out "$csr"
    fi
  fi
}

#_signcsr key  csr  conf cert
_signcsr() {
  key="$1"
  csr="$2"
  conf="$3"
  cert="$4"
  _debug "_signcsr"

  _msg="$(${ACME_OPENSSL_BIN:-openssl} x509 -req -days 365 -in "$csr" -signkey "$key" -extensions v3_req -extfile "$conf" -out "$cert" 2>&1)"
  _ret="$?"
  _debug "$_msg"
  return $_ret
}

#_csrfile
_readSubjectFromCSR() {
  _csrfile="$1"
  if [ -z "$_csrfile" ]; then
    _usage "_readSubjectFromCSR mycsr.csr"
    return 1
  fi
  ${ACME_OPENSSL_BIN:-openssl} req -noout -in "$_csrfile" -subject | tr ',' "\n" | _egrep_o "CN *=.*" | cut -d = -f 2 | cut -d / -f 1 | tr -d ' \n'
}

#_csrfile
#echo comma separated domain list
_readSubjectAltNamesFromCSR() {
  _csrfile="$1"
  if [ -z "$_csrfile" ]; then
    _usage "_readSubjectAltNamesFromCSR mycsr.csr"
    return 1
  fi

  _csrsubj="$(_readSubjectFromCSR "$_csrfile")"
  _debug _csrsubj "$_csrsubj"

  _dnsAltnames="$(${ACME_OPENSSL_BIN:-openssl} req -noout -text -in "$_csrfile" | grep "^ *DNS:.*" | tr -d ' \n')"
  _debug _dnsAltnames "$_dnsAltnames"

  if _contains "$_dnsAltnames," "DNS:$_csrsubj,"; then
    _debug "AltNames contains subject"
    _excapedAlgnames="$(echo "$_dnsAltnames" | tr '*' '#')"
    _debug _excapedAlgnames "$_excapedAlgnames"
    _escapedSubject="$(echo "$_csrsubj" | tr '*' '#')"
    _debug _escapedSubject "$_escapedSubject"
    _dnsAltnames="$(echo "$_excapedAlgnames," | sed "s/DNS:$_escapedSubject,//g" | tr '#' '*' | sed "s/,\$//g")"
    _debug _dnsAltnames "$_dnsAltnames"
  else
    _debug "AltNames doesn't contain subject"
  fi

  echo "$_dnsAltnames" | sed "s/DNS://g"
}

#_csrfile
_readKeyLengthFromCSR() {
  _csrfile="$1"
  if [ -z "$_csrfile" ]; then
    _usage "_readKeyLengthFromCSR mycsr.csr"
    return 1
  fi

  _outcsr="$(${ACME_OPENSSL_BIN:-openssl} req -noout -text -in "$_csrfile")"
  _debug2 _outcsr "$_outcsr"
  if _contains "$_outcsr" "Public Key Algorithm: id-ecPublicKey"; then
    _debug "ECC CSR"
    echo "$_outcsr" | tr "\t" " " | _egrep_o "^ *ASN1 OID:.*" | cut -d ':' -f 2 | tr -d ' '
  else
    _debug "RSA CSR"
    _rkl="$(echo "$_outcsr" | tr "\t" " " | _egrep_o "^ *Public.Key:.*" | cut -d '(' -f 2 | cut -d ' ' -f 1)"
    if [ "$_rkl" ]; then
      echo "$_rkl"
    else
      echo "$_outcsr" | tr "\t" " " | _egrep_o "RSA Public.Key:.*" | cut -d '(' -f 2 | cut -d ' ' -f 1
    fi
  fi
}

_ss() {
  _port="$1"

  if _exists "ss"; then
    _debug "Using: ss"
    ss -ntpl 2>/dev/null | grep ":$_port "
    return 0
  fi

  if [ "$(uname)" = "AIX" ]; then
    _debug "Using: AIX netstat"
    netstat -an | grep "^tcp" | grep "LISTEN" | grep "\.$_port "
    return 0
  fi

  if _exists "netstat"; then
    _debug "Using: netstat"
    if netstat -help 2>&1 | grep "\-p proto" >/dev/null; then
      #for windows version netstat tool
      netstat -an -p tcp | grep "LISTENING" | grep ":$_port "
    else
      if netstat -help 2>&1 | grep "\-p protocol" >/dev/null; then
        netstat -an -p tcp | grep LISTEN | grep ":$_port "
      elif netstat -help 2>&1 | grep -- '-P protocol' >/dev/null; then
        #for solaris
        netstat -an -P tcp | grep "\.$_port " | grep "LISTEN"
      elif netstat -help 2>&1 | grep "\-p" >/dev/null; then
        #for full linux
        netstat -ntpl | grep ":$_port "
      else
        #for busybox (embedded linux; no pid support)
        netstat -ntl 2>/dev/null | grep ":$_port "
      fi
    fi
    return 0
  fi

  return 1
}

#outfile key cert cacert [password [name [caname]]]
_toPkcs() {
  _cpfx="$1"
  _ckey="$2"
  _ccert="$3"
  _cca="$4"
  pfxPassword="$5"
  pfxName="$6"
  pfxCaname="$7"

  if [ "$pfxCaname" ]; then
    ${ACME_OPENSSL_BIN:-openssl} pkcs12 -export -out "$_cpfx" -inkey "$_ckey" -in "$_ccert" -certfile "$_cca" -password "pass:$pfxPassword" -name "$pfxName" -caname "$pfxCaname"
  elif [ "$pfxName" ]; then
    ${ACME_OPENSSL_BIN:-openssl} pkcs12 -export -out "$_cpfx" -inkey "$_ckey" -in "$_ccert" -certfile "$_cca" -password "pass:$pfxPassword" -name "$pfxName"
  elif [ "$pfxPassword" ]; then
    ${ACME_OPENSSL_BIN:-openssl} pkcs12 -export -out "$_cpfx" -inkey "$_ckey" -in "$_ccert" -certfile "$_cca" -password "pass:$pfxPassword"
  else
    ${ACME_OPENSSL_BIN:-openssl} pkcs12 -export -out "$_cpfx" -inkey "$_ckey" -in "$_ccert" -certfile "$_cca"
  fi
  if [ "$?" = "0" ]; then
    _savedomainconf "Le_PFXPassword" "$pfxPassword"
  fi

}

#domain [password] [isEcc]
toPkcs() {
  domain="$1"
  pfxPassword="$2"
  if [ -z "$domain" ]; then
    _usage "Usage: $PROJECT_ENTRY --to-pkcs12 --domain <domain.tld> [--password <password>] [--ecc]"
    return 1
  fi

  _isEcc="$3"

  _initpath "$domain" "$_isEcc"

  _toPkcs "$CERT_PFX_PATH" "$CERT_KEY_PATH" "$CERT_PATH" "$CA_CERT_PATH" "$pfxPassword"

  if [ "$?" = "0" ]; then
    _info "Success, PFX has been exported to: $CERT_PFX_PATH"
  fi

}

#domain [isEcc]
toPkcs8() {
  domain="$1"

  if [ -z "$domain" ]; then
    _usage "Usage: $PROJECT_ENTRY --to-pkcs8 --domain <domain.tld> [--ecc]"
    return 1
  fi

  _isEcc="$2"

  _initpath "$domain" "$_isEcc"

  ${ACME_OPENSSL_BIN:-openssl} pkcs8 -topk8 -inform PEM -outform PEM -nocrypt -in "$CERT_KEY_PATH" -out "$CERT_PKCS8_PATH"

  if [ "$?" = "0" ]; then
    _info "Success, $CERT_PKCS8_PATH"
  fi

}

#[2048]
createAccountKey() {
  _info "Creating account key"
  if [ -z "$1" ]; then
    _usage "Usage: $PROJECT_ENTRY --create-account-key [--accountkeylength <bits>]"
    return
  fi

  length=$1
  _create_account_key "$length"

}

_create_account_key() {

  length=$1

  if [ -z "$length" ] || [ "$length" = "$NO_VALUE" ]; then
    _debug "Using default length $DEFAULT_ACCOUNT_KEY_LENGTH"
    length="$DEFAULT_ACCOUNT_KEY_LENGTH"
  fi

  _debug length "$length"
  _initpath

  mkdir -p "$CA_DIR"
  if [ -s "$ACCOUNT_KEY_PATH" ]; then
    _info "Account key exists, skipping"
    return 0
  else
    #generate account key
    if _createkey "$length" "$ACCOUNT_KEY_PATH"; then
      _info "Account key creation OK."
      return 0
    else
      _err "Account key creation error."
      return 1
    fi
  fi

}

#domain [length]
createDomainKey() {
  _info "Creating domain key"
  if [ -z "$1" ]; then
    _usage "Usage: $PROJECT_ENTRY --create-domain-key --domain <domain.tld> [--keylength <bits>]"
    return
  fi

  domain=$1
  _cdl=$2

  if [ -z "$_cdl" ]; then
    _debug "Using DEFAULT_DOMAIN_KEY_LENGTH=$DEFAULT_DOMAIN_KEY_LENGTH"
    _cdl="$DEFAULT_DOMAIN_KEY_LENGTH"
  fi

  _initpath "$domain" "$_cdl"

  if [ ! -f "$CERT_KEY_PATH" ] || [ ! -s "$CERT_KEY_PATH" ] || ([ "$FORCE" ] && ! [ "$_ACME_IS_RENEW" ]) || [ "$Le_ForceNewDomainKey" = "1" ]; then
    if _createkey "$_cdl" "$CERT_KEY_PATH"; then
      _savedomainconf Le_Keylength "$_cdl"
      _info "The domain key is here: $(__green $CERT_KEY_PATH)"
      return 0
    else
      _err "Cannot create domain key"
      return 1
    fi
  else
    if [ "$_ACME_IS_RENEW" ]; then
      _info "Domain key exists, skipping"
      return 0
    else
      _err "Domain key exists, do you want to overwrite it?"
      _err "If so, add '--force' and try again."
      return 1
    fi
  fi

}

# domain  domainlist isEcc
createCSR() {
  _info "Creating CSR"
  if [ -z "$1" ]; then
    _usage "Usage: $PROJECT_ENTRY --create-csr --domain <domain.tld> [--domain <domain2.tld> ...] [--ecc]"
    return
  fi

  domain="$1"
  domainlist="$2"
  _isEcc="$3"

  _initpath "$domain" "$_isEcc"

  if [ -f "$CSR_PATH" ] && [ "$_ACME_IS_RENEW" ] && [ -z "$FORCE" ]; then
    _info "CSR exists, skipping"
    return
  fi

  if [ ! -f "$CERT_KEY_PATH" ]; then
    _err "This key file was not found: $CERT_KEY_PATH"
    _err "Please create it first."
    return 1
  fi
  _createcsr "$domain" "$domainlist" "$CERT_KEY_PATH" "$CSR_PATH" "$DOMAIN_SSL_CONF"

}

_url_replace() {
  tr '/+' '_-' | tr -d '= '
}

#base64 string
_durl_replace_base64() {
  _l=$((${#1} % 4))
  if [ $_l -eq 2 ]; then
    _s="$1"'=='
  elif [ $_l -eq 3 ]; then
    _s="$1"'='
  else
    _s="$1"
  fi
  echo "$_s" | tr '_-' '/+'
}

_time2str() {
  #BSD
  if date -u -r "$1" -j "+%Y-%m-%dT%H:%M:%SZ" 2>/dev/null; then
    return
  fi

  #Linux
  if date -u --date=@"$1" "+%Y-%m-%dT%H:%M:%SZ" 2>/dev/null; then
    return
  fi

  #Omnios
  if date -u -r "$1" +"%Y-%m-%dT%H:%M:%SZ" 2>/dev/null; then
    return
  fi

  #Solaris
  if printf "%(%Y-%m-%dT%H:%M:%SZ)T\n" $1 2>/dev/null; then
    return
  fi

  #Busybox
  if echo "$1" | awk '{ print strftime("%Y-%m-%dT%H:%M:%SZ", $0); }' 2>/dev/null; then
    return
  fi
}

_normalizeJson() {
  sed "s/\" *: *\([\"{\[]\)/\":\1/g" | sed "s/^ *\([^ ]\)/\1/" | tr -d "\r\n"
}

_stat() {
  #Linux
  if stat -c '%U:%G' "$1" 2>/dev/null; then
    return
  fi

  #BSD
  if stat -f '%Su:%Sg' "$1" 2>/dev/null; then
    return
  fi

  return 1 #error, 'stat' not found
}

#keyfile
_isRSA() {
  keyfile=$1
  if grep "BEGIN RSA PRIVATE KEY" "$keyfile" >/dev/null 2>&1 || ${ACME_OPENSSL_BIN:-openssl} rsa -in "$keyfile" -noout -text 2>&1 | grep "^publicExponent:" 2>&1 >/dev/null; then
    return 0
  fi
  return 1
}

#keyfile
_isEcc() {
  keyfile=$1
  if grep "BEGIN EC PRIVATE KEY" "$keyfile" >/dev/null 2>&1 || ${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | grep "^NIST CURVE:" 2>&1 >/dev/null; then
    return 0
  fi
  return 1
}

#keyfile
_calcjwk() {
  keyfile="$1"
  if [ -z "$keyfile" ]; then
    _usage "Usage: _calcjwk keyfile"
    return 1
  fi

  if [ "$JWK_HEADER" ] && [ "$__CACHED_JWK_KEY_FILE" = "$keyfile" ]; then
    _debug2 "Use cached jwk for file: $__CACHED_JWK_KEY_FILE"
    return 0
  fi

  if _isRSA "$keyfile"; then
    _debug "RSA key"
    pub_exp=$(${ACME_OPENSSL_BIN:-openssl} rsa -in "$keyfile" -noout -text | grep "^publicExponent:" | cut -d '(' -f 2 | cut -d 'x' -f 2 | cut -d ')' -f 1)
    if [ "${#pub_exp}" = "5" ]; then
      pub_exp=0$pub_exp
    fi
    _debug3 pub_exp "$pub_exp"

    e=$(echo "$pub_exp" | _h2b | _base64)
    _debug3 e "$e"

    modulus=$(${ACME_OPENSSL_BIN:-openssl} rsa -in "$keyfile" -modulus -noout | cut -d '=' -f 2)
    _debug3 modulus "$modulus"
    n="$(printf "%s" "$modulus" | _h2b | _base64 | _url_replace)"
    _debug3 n "$n"

    jwk='{"e": "'$e'", "kty": "RSA", "n": "'$n'"}'
    _debug3 jwk "$jwk"

    JWK_HEADER='{"alg": "RS256", "jwk": '$jwk'}'
    JWK_HEADERPLACE_PART1='{"nonce": "'
    JWK_HEADERPLACE_PART2='", "alg": "RS256"'
  elif _isEcc "$keyfile"; then
    _debug "EC key"
    crv="$(${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | grep "^NIST CURVE:" | cut -d ":" -f 2 | tr -d " \r\n")"
    _debug3 crv "$crv"
    __ECC_KEY_LEN=$(echo "$crv" | cut -d "-" -f 2)
    if [ "$__ECC_KEY_LEN" = "521" ]; then
      __ECC_KEY_LEN=512
    fi
    _debug3 __ECC_KEY_LEN "$__ECC_KEY_LEN"
    if [ -z "$crv" ]; then
      _debug "Let's try ASN1 OID"
      crv_oid="$(${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | grep "^ASN1 OID:" | cut -d ":" -f 2 | tr -d " \r\n")"
      _debug3 crv_oid "$crv_oid"
      case "${crv_oid}" in
      "prime256v1")
        crv="P-256"
        __ECC_KEY_LEN=256
        ;;
      "secp384r1")
        crv="P-384"
        __ECC_KEY_LEN=384
        ;;
      "secp521r1")
        crv="P-521"
        __ECC_KEY_LEN=512
        ;;
      *)
        _err "ECC oid: $crv_oid"
        return 1
        ;;
      esac
      _debug3 crv "$crv"
    fi

    pubi="$(${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | grep -n pub: | cut -d : -f 1)"
    pubi=$(_math "$pubi" + 1)
    _debug3 pubi "$pubi"

    pubj="$(${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | grep -n "ASN1 OID:" | cut -d : -f 1)"
    pubj=$(_math "$pubj" - 1)
    _debug3 pubj "$pubj"

    pubtext="$(${ACME_OPENSSL_BIN:-openssl} ec -in "$keyfile" -noout -text 2>/dev/null | sed -n "$pubi,${pubj}p" | tr -d " \n\r")"
    _debug3 pubtext "$pubtext"

    xlen="$(printf "%s" "$pubtext" | tr -d ':' | wc -c)"
    xlen=$(_math "$xlen" / 4)
    _debug3 xlen "$xlen"

    xend=$(_math "$xlen" + 1)
    x="$(printf "%s" "$pubtext" | cut -d : -f 2-"$xend")"
    _debug3 x "$x"

    x64="$(printf "%s" "$x" | tr -d : | _h2b | _base64 | _url_replace)"
    _debug3 x64 "$x64"

    xend=$(_math "$xend" + 1)
    y="$(printf "%s" "$pubtext" | cut -d : -f "$xend"-2048)"
    _debug3 y "$y"

    y64="$(printf "%s" "$y" | tr -d : | _h2b | _base64 | _url_replace)"
    _debug3 y64 "$y64"

    jwk='{"crv": "'$crv'", "kty": "EC", "x": "'$x64'", "y": "'$y64'"}'
    _debug3 jwk "$jwk"

    JWK_HEADER='{"alg": "ES'$__ECC_KEY_LEN'", "jwk": '$jwk'}'
    JWK_HEADERPLACE_PART1='{"nonce": "'
    JWK_HEADERPLACE_PART2='", "alg": "ES'$__ECC_KEY_LEN'"'
  else
    _err "Only RSA or EC keys are supported. keyfile=$keyfile"
    _debug2 "$(cat "$keyfile")"
    return 1
  fi

  _debug3 JWK_HEADER "$JWK_HEADER"
  __CACHED_JWK_KEY_FILE="$keyfile"
}

_time() {
  date -u "+%s"
}

#support 2 formats:
#    2022-04-01 08:10:33   to   1648800633
#or  2022-04-01T08:10:33Z  to   1648800633
_date2time() {
  #Mac/BSD
  if date -u -j -f "%Y-%m-%d %H:%M:%S" "$(echo "$1" | tr -d "Z" | tr "T" ' ')" +"%s" 2>/dev/null; then
    return
  fi
  #Linux
  if date -u -d "$(echo "$1" | tr -d "Z" | tr "T" ' ')" +"%s" 2>/dev/null; then
    return
  fi

  #Solaris
  if gdate -u -d "$(echo "$1" | tr -d "Z" | tr "T" ' ')" +"%s" 2>/dev/null; then
    return
  fi
  #Omnios
  if python3 -c "import datetime; print(int(datetime.datetime.strptime(\"$1\", \"%Y-%m-%d %H:%M:%S\").replace(tzinfo=datetime.timezone.utc).timestamp()))" 2>/dev/null; then
    return
  fi
  #Omnios
  if python3 -c "import datetime; print(int(datetime.datetime.strptime(\"$1\", \"%Y-%m-%dT%H:%M:%SZ\").replace(tzinfo=datetime.timezone.utc).timestamp()))" 2>/dev/null; then
    return
  fi
  _err "Cannot parse _date2time $1"
  return 1
}

_utc_date() {
  date -u "+%Y-%m-%d %H:%M:%S"
}

_mktemp() {
  if _exists mktemp; then
    if mktemp 2>/dev/null; then
      return 0
    elif _contains "$(mktemp 2>&1)" "-t prefix" && mktemp -t "$PROJECT_NAME" 2>/dev/null; then
      #for Mac osx
      return 0
    fi
  fi
  if [ -d "/tmp" ]; then
    echo "/tmp/${PROJECT_NAME}wefADf24sf.$(_time).tmp"
    return 0
  elif [ "$LE_TEMP_DIR" ] && mkdir -p "$LE_TEMP_DIR"; then
    echo "/$LE_TEMP_DIR/wefADf24sf.$(_time).tmp"
    return 0
  fi
  _err "Cannot create temp file."
}

#clear all the https envs to cause _inithttp() to run next time.
_resethttp() {
  __HTTP_INITIALIZED=""
  _ACME_CURL=""
  _ACME_WGET=""
  ACME_HTTP_NO_REDIRECTS=""
}

_inithttp() {

  if [ -z "$HTTP_HEADER" ] || ! touch "$HTTP_HEADER"; then
    HTTP_HEADER="$(_mktemp)"
    _debug2 HTTP_HEADER "$HTTP_HEADER"
  fi

  if [ "$__HTTP_INITIALIZED" ]; then
    if [ "$_ACME_CURL$_ACME_WGET" ]; then
      _debug2 "Http already initialized."
      return 0
    fi
  fi

  if [ -z "$_ACME_CURL" ] && _exists "curl"; then
    _ACME_CURL="curl --silent --dump-header $HTTP_HEADER "
    if [ "$ACME_USE_IPV6_REQUESTS" ]; then
      _ACME_CURL="$_ACME_CURL --ipv6 "
    elif [ "$ACME_USE_IPV4_REQUESTS" ]; then
      _ACME_CURL="$_ACME_CURL --ipv4 "
    fi
    if [ -z "$ACME_HTTP_NO_REDIRECTS" ]; then
      _ACME_CURL="$_ACME_CURL -L "
    fi
    if [ "$DEBUG" ] && [ "$DEBUG" -ge 2 ]; then
      _CURL_DUMP="$(_mktemp)"
      _ACME_CURL="$_ACME_CURL --trace-ascii $_CURL_DUMP "
    fi

    if [ "$CA_PATH" ]; then
      _ACME_CURL="$_ACME_CURL --capath $CA_PATH "
    elif [ "$CA_BUNDLE" ]; then
      _ACME_CURL="$_ACME_CURL --cacert $CA_BUNDLE "
    fi

    if _contains "$(curl --help 2>&1)" "--globoff" || _contains "$(curl --help curl 2>&1)" "--globoff"; then
      _ACME_CURL="$_ACME_CURL -g "
    fi

    #don't use --fail-with-body
    ##from curl 7.76: return fail on HTTP errors but keep the body
    #if _contains "$(curl --help http 2>&1)" "--fail-with-body"; then
    #  _ACME_CURL="$_ACME_CURL --fail-with-body "
    #fi
  fi

  if [ -z "$_ACME_WGET" ] && _exists "wget"; then
    _ACME_WGET="wget -q"
    if [ "$ACME_USE_IPV6_REQUESTS" ]; then
      _ACME_WGET="$_ACME_WGET --inet6-only "
    elif [ "$ACME_USE_IPV4_REQUESTS" ]; then
      _ACME_WGET="$_ACME_WGET --inet4-only "
    fi
    if [ "$ACME_HTTP_NO_REDIRECTS" ]; then
      _ACME_WGET="$_ACME_WGET --max-redirect 0 "
    fi
    if [ "$DEBUG" ] && [ "$DEBUG" -ge "2" ]; then
      if [ "$_ACME_WGET" ] && _contains "$($_ACME_WGET --help 2>&1)" "--debug"; then
        _ACME_WGET="$_ACME_WGET -d "
      fi
    fi
    if [ "$CA_PATH" ]; then
      _ACME_WGET="$_ACME_WGET --ca-directory=$CA_PATH "
    elif [ "$CA_BUNDLE" ]; then
      _ACME_WGET="$_ACME_WGET --ca-certificate=$CA_BUNDLE "
    fi

    #from wget 1.14: do not skip body on 404 error
    if _contains "$(wget --help 2>&1)" "--content-on-error"; then
      _ACME_WGET="$_ACME_WGET --content-on-error "
    fi
  fi

  __HTTP_INITIALIZED=1

}

# body  url [needbase64] [POST|PUT|DELETE] [ContentType]
_post() {
  body="$1"
  _post_url="$2"
  needbase64="$3"
  httpmethod="$4"
  _postContentType="$5"

  if [ -z "$httpmethod" ]; then
    httpmethod="POST"
  fi
  _debug $httpmethod
  _debug "_post_url" "$_post_url"
  _debug2 "body" "$body"
  _debug2 "_postContentType" "$_postContentType"

  _inithttp

  if [ "$_ACME_CURL" ] && [ "${ACME_USE_WGET:-0}" = "0" ]; then
    _CURL="$_ACME_CURL"
    if [ "$HTTPS_INSECURE" ]; then
      _CURL="$_CURL --insecure  "
    fi
    if [ "$httpmethod" = "HEAD" ]; then
      _CURL="$_CURL -I  "
    fi
    _debug "_CURL" "$_CURL"
    if [ "$needbase64" ]; then
      if [ "$body" ]; then
        if [ "$_postContentType" ]; then
          response="$($_CURL --user-agent "$USER_AGENT" -X $httpmethod -H "Content-Type: $_postContentType" -H "$_H1" -H "$_H2" -H "$_H3" -H "$_H4" -H "$_H5" --data "$body" "$_post_url" | _base64)"
        else
          response="$($_CURL --user-agent "$USER_AGENT" -X $httpmethod -H "$_H1" -H "$_H2" -H "$_H3" -H "$_H4" -H "$_H5" --data "$body" "$_post_url" | _base64)"
        fi
      else
        if [ "$_postContentType" ]; then
          response="$($_CURL --user-agent "$USER_AGENT" -X $httpmethod -H "Content-Type: $_postContentType" -H "$_H1" -H "$_H2" -H "$_H3" -H "$_H4" -H "$_H5" "$_post_url" | _base64)"
        else
          response="$($_CURL --user-agent "$USER_AGENT" -X $httpmethod -H "$_H1" -H "$_H2" -H "$_H3" -H "$_H4" -H "$_H5" "$_post_url" | _base64)"
        fi
