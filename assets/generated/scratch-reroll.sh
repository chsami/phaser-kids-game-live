set +e
node scripts/generate-sprite.mjs snake "a cute cartoon snake coiled up, facing forward" --poses base,happy --retries 6 --size 384
node scripts/generate-sprite.mjs whale "a whale seen from the side in profile facing right" --poses base,happy --retries 6 --size 384
for n in rabbit goat chicken bear hippo sloth walrus; do
  node scripts/generate-sprite.mjs "$n" "x" --poses happy --retries 6
done
echo "REROLL DONE"
