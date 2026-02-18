# Setting Up a Custom Domain for Kelly AI

Complete guide to buying and configuring a custom domain for https://kellyclaudeai.github.io/kelly-ai/

## Step 1: Choose a Domain Name

### Recommended Options (in order of preference)

1. **kelly.ai** — Perfect brand match, .ai domain is on-brand for AI agent
   - Pros: Short, memorable, premium AI extension
   - Cons: .ai domains are expensive (~$100-200/year)
   - Availability: Check at https://get.ai/

2. **kellyai.com** — Classic .com domain
   - Pros: Professional, trusted extension, cheaper (~$12/year)
   - Cons: Might be taken
   - Availability: Check at any registrar

3. **kelly.dev** — Developer-focused
   - Pros: Developer community recognized, modern
   - Cons: Less universal recognition
   - Price: ~$15/year

4. **iamkelly.ai** or **meetkelly.ai** — Alternative .ai options
   - Pros: Still .ai extension, likely available
   - Cons: Slightly longer

5. **kelly.bot** — AI/automation focused
   - Pros: On-brand for AI agent
   - Cons: Less common extension

## Step 2: Choose a Domain Registrar

### Recommended Registrars

**Best Overall: Cloudflare**
- Price: At-cost pricing (no markup)
- Pros: 
  - Cheapest option
  - Built-in CDN and DDoS protection
  - Easy DNS management
  - Free WHOIS privacy
- Cons: Requires transferring from another registrar initially
- URL: https://www.cloudflare.com/products/registrar/

**Easiest: Namecheap**
- Price: Competitive (~$12/year for .com)
- Pros:
  - Simple interface
  - Free WHOIS privacy
  - Good support
  - Accepts all payment methods
- Cons: Slightly more expensive than Cloudflare
- URL: https://www.namecheap.com/

**For .ai domains: get.ai**
- Price: ~$100-200/year
- Pros: Official .ai registrar
- Cons: Expensive
- URL: https://get.ai/

**Alternative: Google Domains (now Squarespace)**
- Price: ~$12/year for .com
- Pros: Clean interface, Google integration
- Cons: Recently acquired by Squarespace (transition period)
- URL: https://domains.google/

## Step 3: Purchase the Domain

### Using Namecheap (Example Walkthrough)

1. **Go to Namecheap.com**
   ```
   https://www.namecheap.com/
   ```

2. **Search for your domain**
   - Enter "kelly" or your chosen name in the search box
   - Check availability and pricing

3. **Add to cart**
   - Select domain length (1 year minimum, can do 2-5 years for discount)
   - **Important:** Enable "WhoisGuard" (free privacy protection)
   - Skip add-ons like email hosting (not needed)

4. **Create account or sign in**

5. **Payment**
   - Credit card, PayPal, or crypto accepted
   - Total cost: ~$12-15 for first year (.com)

6. **Complete purchase**
   - Save confirmation email
   - Domain will be active within 5-30 minutes

## Step 4: Configure DNS for GitHub Pages

### Option A: Using CNAME (Subdomain like www.kelly.ai)

1. **Log into your registrar (e.g., Namecheap)**

2. **Navigate to DNS settings**
   - Namecheap: Dashboard → Domain List → Manage → Advanced DNS

3. **Add these DNS records:**

   | Type  | Host | Value | TTL |
   |-------|------|-------|-----|
   | CNAME | www  | kellyclaudeai.github.io | Automatic |

### Option B: Using Apex Domain (kelly.ai without www)

**Recommended for best branding**

1. **Add these DNS records:**

   | Type  | Host | Value | TTL |
   |-------|------|-------|-----|
   | A     | @    | 185.199.108.153 | Automatic |
   | A     | @    | 185.199.109.153 | Automatic |
   | A     | @    | 185.199.110.153 | Automatic |
   | A     | @    | 185.199.111.153 | Automatic |
   | CNAME | www  | kellyclaudeai.github.io | Automatic |

   These are GitHub Pages' official IP addresses (as of 2026).

2. **Important Notes:**
   - Use @ or blank for the apex domain (depends on registrar)
   - Add all 4 A records for redundancy
   - Add www CNAME so both versions work

## Step 5: Configure GitHub Repository

### Method 1: Via GitHub Web Interface

1. **Go to your repository**
   ```
   https://github.com/kellyclaudeai/kelly-ai
   ```

2. **Navigate to Settings**
   - Click "Settings" tab
   - Scroll to "Pages" section (left sidebar)

3. **Add custom domain**
   - Under "Custom domain", enter: `kelly.ai` (or your domain)
   - Click "Save"

4. **Wait for DNS check**
   - GitHub will verify DNS configuration
   - Takes 5-10 minutes
   - Green checkmark when ready

5. **Enable HTTPS**
   - Check "Enforce HTTPS"
   - May take 24 hours for certificate to provision
   - GitHub uses Let's Encrypt (free SSL)

### Method 2: Via Command Line (Faster)

```bash
cd /Users/austenallred/clawd/kelly-website

# Create CNAME file with your domain
echo "kelly.ai" > CNAME

# Commit and push
git add CNAME
git commit -m "Add custom domain: kelly.ai"
git push origin master
```

Then enable HTTPS in GitHub settings manually.

## Step 6: Verify Setup

### DNS Propagation Check

```bash
# Check if DNS is propagating
dig kelly.ai +short

# Should return GitHub Pages IPs:
# 185.199.108.153
# 185.199.109.153
# 185.199.110.153
# 185.199.111.153
```

Or use online tools:
- https://dnschecker.org/
- https://www.whatsmydns.net/

### Test the Domain

1. **Wait 5-60 minutes** for DNS propagation
2. **Visit your domain** in a browser
3. **Check both versions:**
   - http://kelly.ai
   - https://kelly.ai
   - http://www.kelly.ai
   - https://www.kelly.ai

4. **Verify HTTPS certificate**
   - Click padlock icon in browser
   - Should show "Issued by: Let's Encrypt"

## Step 7: Update Links

Once domain is live, update these references:

### In Website Code

Edit `/Users/austenallred/clawd/kelly-website/index.html`:

```html
<!-- Update meta tags for SEO -->
<meta property="og:url" content="https://kelly.ai">
<link rel="canonical" href="https://kelly.ai">
```

### In GitHub Repository

Update README.md to reference new domain:

```markdown
**Live Site:** https://kelly.ai
```

### External Links

Update any existing links to point to new domain:
- GitHub profile
- Social media
- Documentation
- Email signatures

## Troubleshooting

### Domain not working after 24 hours

**Check DNS records:**
```bash
dig kelly.ai
dig www.kelly.ai
```

**Common issues:**
- Wrong IP addresses (verify GitHub's IPs haven't changed)
- Missing www CNAME record
- Typo in domain name in GitHub settings

### SSL certificate not provisioning

- Wait 24 hours (GitHub's limit)
- Ensure DNS is fully propagated
- Try removing and re-adding custom domain in GitHub settings
- Check that HTTPS enforcement is enabled

### "Domain is already taken" error in GitHub

- Domain is configured on another GitHub Pages site
- Contact GitHub support to release it
- Or verify you own the domain with DNS TXT record

## Cost Summary

### One-Time Setup
- Domain purchase: $12-200/year (depending on extension)
- GitHub Pages hosting: **Free**
- SSL certificate: **Free** (via Let's Encrypt)
- Total: $12-200/year

### Ongoing Costs
- Domain renewal: $12-200/year
- Everything else: **Free**

### Recommended Budget
- .com domain: $12-15/year
- .ai domain: $100-200/year

## Alternative: Use a Subdomain

If you already own a domain (e.g., lambdaschool.com), you can use a subdomain:

**Example:** kelly.lambdaschool.com

1. Add DNS records at your existing domain:
   ```
   Type: CNAME
   Host: kelly
   Value: kellyclaudeai.github.io
   ```

2. In GitHub settings, set custom domain to:
   ```
   kelly.lambdaschool.com
   ```

**Pros:**
- No additional cost
- Instant setup (no new domain purchase)

**Cons:**
- Less memorable
- Tied to parent brand

## Next Steps

1. ✅ Choose domain name (recommended: kelly.ai or kellyai.com)
2. ✅ Select registrar (recommended: Namecheap for ease)
3. ✅ Purchase domain
4. ✅ Configure DNS records
5. ✅ Add CNAME file to repository
6. ✅ Enable HTTPS in GitHub settings
7. ✅ Wait for propagation (5-60 minutes)
8. ✅ Test domain
9. ✅ Update website meta tags and links

## Quick Commands (Once Domain is Purchased)

```bash
# Navigate to project
cd /Users/austenallred/clawd/kelly-website

# Add custom domain file
echo "kelly.ai" > CNAME  # Replace with your domain

# Commit and deploy
git add CNAME
git commit -m "Add custom domain configuration"
git push origin master

# DNS will auto-propagate
# Enable HTTPS in GitHub repo settings after DNS check passes
```

---

**Ready to purchase?** Pick your domain name and I'll guide you through the exact steps for your chosen registrar.
