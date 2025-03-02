declare-option str black "rgb:191919"
declare-option str blue "rgb:8cdaff"
declare-option str blue2 "rgb:97d8ea"
declare-option str blue3 "rgb:66d9ef"
declare-option str blue4 "rgb:90e7f7"
declare-option str blue5 "rgb:66a9ec"
declare-option str blue6 "rgb:6699cc"
declare-option str grey "rgb:3b3a32"
declare-option str grey2 "rgb:999999"
declare-option str grey3 "rgb:3d3d3d"
declare-option str grey4 "rgb:515151"
declare-option str grey5 "rgb:565656"
declare-option str grey6 "rgb:6d6d6d"
declare-option str grey7 "rgb:d0d0d0"
declare-option str orange "rgb:fab85a"
declare-option str orange2 "rgb:ff8942"
declare-option str orange3 "rgb:fc9354"
declare-option str orange4 "rgb:fdb082"
declare-option str orange5 "rgb:fbdfb5"
declare-option str orange6 "rgb:ff9664"
declare-option str orange7 "rgb:ffd2a6"
declare-option str pink "rgb:e5a5e0"
declare-option str pink2 "rgb:cd5ac5"
declare-option str pink3 "rgb:ffb2f9"
declare-option str purple "rgb:d699ff"
declare-option str purple2 "rgb:cc00ff"
declare-option str red "rgb:ff5e5e"
declare-option str red2 "rgb:f92649"
declare-option str red3 "rgb:d66990"
declare-option str red4 "rgb:e05d8c"
declare-option str red5 "rgb:f92672"
declare-option str white "rgb:ffffff"
declare-option str white2 "rgb:fbe3bf"
declare-option str white3 "rgb:ffe1fc"
declare-option str white4 "rgb:ffd0fb"
declare-option str white5 "rgb:f8f8f0"
declare-option str white6 "rgb:f8f8f2"
declare-option str white7 "rgb:ecfdb9"
declare-option str yellow "rgb:a6e22e"
declare-option str yellow2 "rgb:e9fdac"
declare-option str yellow3 "rgb:75715e"



# Reference
# https://github.com/mawww/kakoune/blob/master/colors/default.kak
# For code
set-face global value "%opt{white}"
set-face global type "%opt{blue}"
set-face global variable "%opt{white}"
set-face global module "%opt{orange}"
set-face global function "%opt{orange}"
set-face global string "%opt{white7}"
set-face global keyword "%opt{red}"
set-face global operator "%opt{white}"
set-face global attribute "%opt{white}"
set-face global bracket "%opt{white}+b"
set-face global arguement "%opt{white}"
set-face global comma "%opt{white}"
set-face global constant "%opt{white}+b"
set-face global class "%opt{orange}"
set-face global comment "%opt{grey6}"
set-face global meta "%opt{white}"
set-face global builtin "%opt{white}+b"

# For markup
# set-face global title "%opt{keyword}"
# set-face global header "%opt{keyword}"
# set-face global bold "%opt{white}"
# set-face global italic "%opt{white}"
# set-face global mono "%opt{white}"
# set-face global block "%opt{white}"
# set-face global link "%opt{white}"
# set-face global bullet "%opt{white}"
# set-face global list "%opt{white}"

# Builtin faces
declare-option str cursor "rgb:a6a6a6"
declare-option str inactive_cursor "rgb:878b91"
declare-option str primary_selection "rgb:575b61"
declare-option str selection "rgb:878b91"

set-face global Default "%opt{white}"
set-face global PrimarySelection "default,%opt{primary_selection}"
set-face global SecondarySelection "default,%opt{selection}"
set-face global PrimaryCursor "%opt{black},%opt{cursor}"
set-face global SecondaryCursor "%opt{black},%opt{inactive_cursor}"
set-face global PrimaryCursorEol "%opt{black},%opt{cursor}"
set-face global SecondaryCursorEol "%opt{black},%opt{inactive_cursor}"
set-face global LineNumbers "%opt{grey2},%opt{black}"
set-face global LineNumberCursor "%opt{grey},%opt{black}+b"
set-face global LineNumbersWrapped "%opt{grey},%opt{black}+i"
set-face global MenuForeground "%opt{black},%opt{white}+b"
set-face global MenuBackground "%opt{white},%opt{black}"
set-face global MenuInfo "%opt{black},%opt{orange}"
set-face global Information "%opt{white},%opt{black}"
set-face global Error "%opt{red},%opt{black}"
set-face global StatusLine "%opt{white},%opt{black}"
set-face global StatusLineMode "%opt{blue2},%opt{black}"
set-face global StatusLineInfo "%opt{purple},%opt{black}"
set-face global StatusLineValue "%opt{orange},%opt{black}"
set-face global StatusCursor "%opt{white},%opt{blue}"
set-face global Prompt "%opt{orange2},%opt{black}"
set-face global MatchingChar "%opt{orange2},%opt{black}"
set-face global Whitespace "rgb:222222"
set-face global WrapMarker Whitespace
set-face global BufferPadding "%opt{black}"

set-face global DiagnosticError "%opt{red2},%opt{black}+u"
set-face global DiagnosticWarning "%opt{white},%opt{black}+u"
set-face global DiagnosticInfo "%opt{white},%opt{black}+u"
set-face global DiagnosticTagUnnecessary "%opt{white},%opt{black}+u"

set-face global InfoDefault               Information
set-face global InfoBlock                 "%opt{white}"
set-face global InfoBlockQuote            Information
set-face global InfoBullet                Information
set-face global InfoHeader                Information
set-face global InfoLink                  function
set-face global InfoLinkMono              function
set-face global InfoMono                  Information
set-face global InfoRule                  Information
set-face global InfoDiagnosticError       Information
set-face global InfoDiagnosticHint        Information
set-face global InfoDiagnosticInformation Information
set-face global InfoDiagnosticWarning     Information



set-face global ts_comment "%opt{grey6}"
set-face global ts_string "%opt{white7}"
set-face global ts_constant_numeric "%opt{orange4}"
set-face global ts_constant_language "%opt{orange2}"

set-face global ts_constant_character "%opt{orange4}"
set-face global ts_other "%opt{orange4}"


set-face global ts_variable "%opt{white}"
set-face global ts_type "%opt{blue2}"
set-face global ts_function "%opt{white2}"
set-face global ts_keyword "%opt{red}"
set-face global ts_keyword_import "%opt{red}"
set-face global ts_operator "%opt{white}"

set-face global ts_storage "%opt{red}"
set-face global ts_storage_type "%opt{orange5}"
set-face global ts_entity_name_class "%opt{blue}"
set-face global ts_entity_other_inherited_class "%opt{blue}"
set-face global ts_entity_name_function "%opt{blue}"
set-face global ts_variable_parameter "%opt{orange3}"
set-face global ts_entity_name_tag "%opt{red}"
set-face global ts_entity_other_attribute_name "%opt{blue2}"
set-face global ts_support_function "%opt{blue6}"
set-face global ts_support_constant "%opt{white}"
set-face global ts_support_type "%opt{white2}"
set-face global ts_support_class "%opt{white2}"
set-face global ts_support_other_namespace "%opt{pink3}"
set-face global ts_entity_name_type_namespace "%opt{pink3}"
set-face global ts_support_other_namespace_use_as_php "%opt{blue3}"
set-face global ts_variable_language_namespace_php "%opt{red3}"
set-face global ts_punctuation_separator_inheritance_php "%opt{red5}"

set-face global ts_support_function_misc_css "%opt{orange4}"
set-face global ts_support_constant_property_value_css "%opt{orange4}"
set-face global ts_support_constant_font_name_css "%opt{orange4}"

set-face global ts_meta_tag_template_value "%opt{pink2}"
set-face global ts_meta_tag_template_block "%opt{pink2}"

set-face global ts_keyword_control "%opt{red}"
set-face global ts_keyword_control "%opt{red}"
set-face global ts_variable_other "%opt{pink}"
set-face global ts_variable_other_property "%opt{white3}"
set-face global ts_constant_language "%opt{orange7}"
set-face global ts_constant_numeric "%opt{white4}"
set-face global ts_support_function "%opt{blue4}"
set-face global ts_meta_function_call_other "%opt{orange}"
set-face global ts_meta_function_call "%opt{orange}"
set-face global ts_invalid "%opt{white5}"
set-face global ts_invalid_deprecated "%opt{white5}"

set-face global ts_punctuation_definition_string "%opt{white}"
set-face global ts_punctuation_definition_variable "%opt{white}"
set-face global ts_punctuation_definition_string "%opt{white}"
set-face global ts_punctuation_definition_parameters "%opt{white}"
set-face global ts_punctuation_definition_array "%opt{white}"

set-face global ts_variable_parameter_function "%opt{grey7}"

set-face global ts_entity_other_attribute_name_id "%opt{blue5}"
set-face global ts_punctuation_definition_entity "%opt{blue5}"

set-face global ts_variable_language_super "%opt{purple}"
set-face global ts_variable_language_this "%opt{purple}"
set-face global ts_variable_language_self "%opt{purple}"

set-face global ts_markup_deleted_git_gutter "%opt{red5}"
set-face global ts_markup_inserted_git_gutter "%opt{yellow}"
set-face global ts_markup_changed_git_gutter "%opt{purple2}"
set-face global ts_markup_ignored_git_gutter "%opt{grey2}"
set-face global ts_markup_untracked_git_gutter "%opt{grey5}"
set-face global ts_meta_diff "%opt{yellow3}"
set-face global ts_meta_diff_header "%opt{yellow3}"
set-face global ts_markup_deleted "%opt{red5}"
set-face global ts_markup_inserted "%opt{yellow}"
set-face global ts_markup_changed "%opt{purple2}"

