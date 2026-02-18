# Purchasing iamkelly.ai - Step-by-Step Guide

## Purchase Instructions

### Step 1: Go to get.ai
Open your browser and navigate to:
```
https://get.ai/
```

Or try the direct domain search:
```
https://get.ai/iamkelly.ai
```

*(Note: get.ai may be slow to load - this is normal for .ai registrars)*

### Step 2: Search for the Domain
1. In the search box, enter: **iamkelly.ai**
2. Click "Search" or press Enter
3. Confirm it shows as "Available"

### Step 3: Add to Cart
1. Click "Add to Cart" or "Register" button
2. Domain will be added with default 1-year registration
3. Price should be around **$150-200/year** (get.ai pricing)

### Step 4: Create Account or Sign In
If you don't have a get.ai account:
1. Click "Create Account" or "Sign Up"
2. Fill in:
   - Email address
   - Password
   - Full name
   - Organization (optional - can put "Kelly AI" or leave blank)

If you already have an account, just sign in.

### Step 5: Review Cart
Verify:
- ✅ Domain: iamkelly.ai
- ✅ Period: 1 year (minimum)
- ✅ Price: ~$150-200
- ✅ Privacy protection: Usually included automatically

**Optional upgrades to SKIP:**
- ❌ Email hosting - Not needed
- ❌ Website builder - Not needed (we have GitHub Pages)
- ❌ SSL certificate - Not needed (GitHub provides free SSL)

### Step 6: Enter Contact Information
Fill in registrant details:
- Full name
- Organization (optional - can use "Kelly AI")
- Address
- Phone
- Email

**Privacy Note:** Most .ai domains include free WHOIS privacy, which hides this info from public lookup.

### Step 7: Payment
Choose payment method:
- Credit card (Visa, Mastercard, Amex)
- PayPal
- Some registrars accept crypto

Complete payment (~$150-200).

### Step 8: Confirmation
1. You'll receive confirmation email
2. Domain will be active within 5-30 minutes
3. Save your login credentials

---

## After Purchase: DNS Configuration

Once you complete the purchase, follow these steps to connect it to GitHub Pages.

### Option A: I'll Do It For You

Just let me know the purchase is complete and give me access to:
1. Your get.ai account login page
2. I'll configure DNS settings via browser automation

### Option B: You Configure DNS Manually

1. **Log into get.ai dashboard**
   - Go to https://get.ai/
   - Sign in with your credentials
   - Navigate to "Manage Domains" or "My Domains"

2. **Click on iamkelly.ai**

3. **Find DNS Settings**
   - Look for "DNS Management", "DNS Settings", or "Name Servers"

4. **Add These DNS Records:**

   **For Apex Domain (iamkelly.ai):**
   ```
   Type: A
   Name: @ (or leave blank)
   Value: 185.199.108.153
   TTL: Automatic (or 3600)
   
   Type: A
   Name: @ (or leave blank)
   Value: 185.199.109.153
   TTL: Automatic
   
   Type: A
   Name: @ (or leave blank)
   Value: 185.199.110.153
   TTL: Automatic
   
   Type: A
   Name: @ (or leave blank)
   Value: 185.199.111.153
   TTL: Automatic
   ```

   **For www subdomain:**
   ```
   Type: CNAME
   Name: www
   Value: kellyclaudeai.github.io
   TTL: Automatic
   ```

5. **Save changes**

---

## Automatic Setup (I'll Handle It)

Once you've purchased, I'll automatically:

1. ✅ Create CNAME file in repository
2. ✅ Commit and push to GitHub
3. ✅ Configure custom domain in GitHub Pages settings
4. ✅ Enable HTTPS (free SSL certificate)
5. ✅ Verify DNS propagation
6. ✅ Test the domain

**Commands I'll run:**
```bash
cd /Users/austenallred/clawd/kelly-website
echo "iamkelly.ai" > CNAME
git add CNAME
git commit -m "Add custom domain: iamkelly.ai"
git push origin master

# Then configure GitHub Pages settings via API
gh api repos/kellyclaudeai/kelly-ai/pages -X PUT -f source[branch]=master
```

---

## Timeline

- **Purchase:** 5-10 minutes
- **Domain activation:** 5-30 minutes
- **DNS propagation:** 5-60 minutes
- **HTTPS certificate:** 1-24 hours
- **Total time to live site:** 1-2 hours typically

---

## Troubleshooting

### get.ai website won't load
- Try again in a few minutes (their site can be slow)
- Try different browser
- Clear cache and cookies

### Domain shows as taken when you search
- Someone else registered it between my check and now
- We'll need to pick an alternative (meetkelly.ai or shipkelly.ai)

### Payment declined
- Try PayPal instead of credit card
- Contact your bank (sometimes flags foreign purchases)
- Verify billing address matches card

### Domain not working after 24 hours
- Check DNS settings (see configuration above)
- Verify CNAME file is in GitHub repo
- Check GitHub Pages settings show custom domain
- Contact me and I'll diagnose

---

## Alternative Registrars

If get.ai isn't working, these registrars also sell .ai domains:

1. **Namecheap** - https://www.namecheap.com/
   - Search for: iamkelly.ai
   - Usually $150-180/year
   - Easier checkout process

2. **GoDaddy** - https://www.godaddy.com/
   - Search for: iamkelly.ai
   - Usually $160-200/year
   - More expensive but reliable

3. **101domain** - https://www.101domain.com/
   - Specializes in international TLDs
   - Sometimes better pricing

---

## Cost Summary

**First Year:**
- Domain registration: $150-200
- GitHub Pages hosting: FREE
- SSL certificate: FREE
- DNS: FREE
- **Total: $150-200**

**Ongoing (Annual):**
- Domain renewal: $150-200/year
- Everything else: FREE
- **Total: $150-200/year**

---

## Ready?

When you're ready to purchase:
1. Go to https://get.ai/
2. Search for "iamkelly.ai"
3. Complete checkout
4. Let me know it's done
5. I'll configure everything automatically

**Questions before you buy?** Ask me anything.

**Alternative domains if this one is gone:**
- meetkelly.ai
- shipkelly.ai
- kelly.build (much cheaper at $40/year)
