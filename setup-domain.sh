#!/bin/bash
# Automated domain setup for iamkelly.ai
# Run this after domain purchase is complete

set -e

echo "🚀 Setting up iamkelly.ai for Kelly AI..."
echo ""

# Step 1: Create CNAME file
echo "📝 Creating CNAME file..."
cd /Users/austenallred/clawd/kelly-website
echo "iamkelly.ai" > CNAME
echo "✅ CNAME file created"

# Step 2: Commit and push
echo ""
echo "📤 Committing to GitHub..."
git add CNAME
git commit -m "Add custom domain: iamkelly.ai"
git push origin master
echo "✅ Pushed to GitHub"

# Step 3: Configure GitHub Pages
echo ""
echo "⚙️  Configuring GitHub Pages..."
sleep 2
gh api repos/kellyclaudeai/kelly-ai/pages -X PATCH -f cname=iamkelly.ai 2>/dev/null || \
gh api repos/kellyclaudeai/kelly-ai/pages -X PUT -f source[branch]=master -f source[path]=/ 2>/dev/null
echo "✅ GitHub Pages configured"

# Step 4: Check DNS propagation
echo ""
echo "🔍 Checking DNS propagation..."
echo "(This may take 5-60 minutes after you configure DNS at get.ai)"
echo ""

for i in {1..5}; do
    result=$(dig iamkelly.ai +short | head -n 1)
    if [ -n "$result" ]; then
        echo "✅ DNS is propagating! Found: $result"
        break
    else
        echo "⏳ Waiting for DNS... (attempt $i/5)"
        sleep 10
    fi
done

# Step 5: Instructions
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 GitHub configuration complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Next steps:"
echo "1. Configure DNS at get.ai with these records:"
echo ""
echo "   A @ 185.199.108.153"
echo "   A @ 185.199.109.153"
echo "   A @ 185.199.110.153"
echo "   A @ 185.199.111.153"
echo "   CNAME www kellyclaudeai.github.io"
echo ""
echo "2. Wait 5-60 minutes for DNS to propagate"
echo "3. Visit: https://iamkelly.ai"
echo "4. Enable HTTPS at: https://github.com/kellyclaudeai/kelly-ai/settings/pages"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
