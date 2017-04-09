#/bin/bash
read -r -e -p "Enter a new name in small lettres  WITHOUT spaces and special chars: " KOF_PLASMOID_NAME_SHORT

echo "Copying skeleton to ~/Entwicklung/$KOF_PLASMOID_NAME_SHORT"
cp -r ~/Entwicklung/_plasmoidTemplate ~/Entwicklung/$KOF_PLASMOID_NAME_SHORT

read -r -e -p "Provide a comment for metadata.desktop: " KOF_META_COMMENT

KOF_PLASMOID_NAME_ORG=org.koffeinfriedhof
KOF_PLASMOID_NAME=$KOF_PLASMOID_NAME_ORG.$KOF_PLASMOID_NAME_SHORT
KOF_DATE=$(date +'%Y-%m-%d')

KOF_CURRENT_YEAR_AUTHOR_EMAIL="$(date +'%Y') koffeinfriedhof <koffeinfriedhof@gmail.com>"

for file in $(find ~/Entwicklung/$KOF_PLASMOID_NAME_SHORT -type f)
 do
  sed -e "s/KOF_META_COMMENT/$KOF_META_COMMENT/g" -i "$file"
  sed -e "s/KOF_PLASMOID_NAME_SHORT/$KOF_PLASMOID_NAME_SHORT/g" -i "$file"
  sed -e "s/KOF_PLASMOID_NAME_ORG/$KOF_PLASMOID_NAME_ORG/g" -i "$file"
  sed -e "s/KOF_PLASMOID_NAME/$KOF_PLASMOID_NAME/g" -i "$file"
  sed -e "s/KOF_DATE/$KOF_DATE/g" -i "$file"
  sed -e "s/KOF_CURRENT_YEAR_AUTHOR_EMAIL/$KOF_CURRENT_YEAR_AUTHOR_EMAIL/g" -i "$file"
 done
