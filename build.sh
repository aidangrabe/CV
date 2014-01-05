#!/bin/bash

scss css/resume.scss 2> err.txt > css/resume.css && {
    echo "[ok] SASS compilation successful";
    google-chrome resume.html
} || {
    echo "[fail] SASS compilation failed";
    cat err.txt | less
}
