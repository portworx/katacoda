ssh -o strictHostKeyChecking=no node01 pxctl volume list -s --parent ha_volume --json  | jq '.[].locator.name' | grep -q snap-0 && ssh -o strictHostKeyChecking=no node01 pxctl volume list -s --parent ha_volume --json  | jq '.[].locator.volume_labels.type'  | grep -q backup && echo "done"
