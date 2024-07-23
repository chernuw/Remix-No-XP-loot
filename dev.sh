echo "Building RemixNoXpLoot and installing to WoW's Addons directory."

echo "Creating TOC file..."
touch RemixNoXpLoot.toc.tmp
cat RemixNoXpLoot.toc > RemixNoXpLoot.toc.tmp
sed -i "s/@project-version@/$(git describe --abbrev=0)/g" RemixNoXpLoot.toc.tmp

echo "Copying assets..."
mkdir -p /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixNoXpLoot/
cp *.lua /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixNoXpLoot/
cp *.png /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixNoXpLoot/
cp RemixNoXpLoot.toc.tmp /d/games/World\ of\ Warcraft/_retail_/Interface/AddOns/RemixNoXpLoot/RemixNoXpLoot.toc

echo "Cleaning up..."
rm RemixNoXpLoot.toc.tmp

echo "Complete."