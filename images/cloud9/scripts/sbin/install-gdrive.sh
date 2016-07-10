#!/bin/bash

dnf install --assumeyes wget &&
wget --output-document /opt/rapidbulldozer/gdrive https://docs.google.com/uc?id=0B3X9GlR6EmbnQ0FtZmJJUXEyRTA&export=download &&
chmod u+x /opt/rapidbulldozer/gdrive &&
true
