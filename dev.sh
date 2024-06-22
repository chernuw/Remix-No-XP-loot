echo "Building RemixDoNotGetExperience and installing to WoW's Addons directory."

echo "Creating TOC file..."
touch RemixDoNotGetExperience.toc.tmp
cat RemixDoNotGetExperience.toc > RemixDoNotGetExperience.toc.tmp
sed -i "s/@project-version@/$(git describe --abbrev=0)/g" RemixDoNotGetExperience.toc.tmp

echo "Copying assets..."
mkdir -p /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixDoNotGetExperience/
cp *.lua /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixDoNotGetExperience/
cp RemixDoNotGetExperience.toc.tmp /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixDoNotGetExperience/RemixDoNotGetExperience.toc

echo "Cleaning up..."
rm RemixDoNotGetExperience.toc.tmp

echo "Complete."