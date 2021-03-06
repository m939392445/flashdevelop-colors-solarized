#/bin/sed -f
#
# cat-s.sed: removes leading and trailing blank lines, replaces multiple consecutive blank lines with a single blank line

# Delete all leading blank lines.
1,/^[ \t]*[^ \t]/ {
	/[ \t]*[^ \t]/! d
}

# On an blank line, remove it and all but one following blank lines.
:x
/^[ \t]*[^ \t]/! {
	N
	s/^\n[ \t]*$//
	tx
}
