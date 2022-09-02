; We don't really need those custom TreeSitter highlights
; But I made anyway to be as similar as possible :)
; TODO: Write some comments to explain what each thing means

(
 (unit) @CMYKUnit
)

([
 "["
 "]"
 "("
 ")"
] @CMYKBraces )

(class_selector (class_name) @CMYKClassName)

(pseudo_class_selector (class_name) @CMYKPseudoClass)

(pseudo_element_selector ("::") (tag_name) @CMYKPseudoElement)

(pseudo_element_selector  (tag_name) @type ("::"))

(id_selector (id_name) @CMYKIdName)

((property_name) @type (#match? @type "^--")) @CMYKVar

((plain_value) @type (#match? @type "^--")) @CMYKVar
