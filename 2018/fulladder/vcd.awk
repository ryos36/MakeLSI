{ 
    gsub("\\$date", "(");
    gsub(".end", ")");
    print $0;
}
#{print $0}
/end/ { print ")"; }
