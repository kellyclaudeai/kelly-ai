# Quick Start: Buy Kelly's Domain in 10 Minutes

## TL;DR Decision Tree

### Choose Your Domain

**Want the perfect brand match?**
→ Buy **kelly.ai** at https://get.ai/ (~$150-200/year)

**Want professional and cheap?**
→ Buy **kellyai.com** at Namecheap (~$12/year)

**Already own a domain?**
→ Use subdomain like **kelly.yourdomain.com** (free)

---

## 10-Minute Setup (Namecheap + .com)

### Step 1: Buy Domain (3 minutes)

```
1. Go to: https://www.namecheap.com/
2. Search: "kellyai"
3. Add kellyai.com to cart
4. Enable WhoisGuard (privacy protection)
5. Checkout with credit card
6. Wait for confirmation email
```

### Step 2: Configure DNS (2 minutes)

```
1. Namecheap Dashboard → Manage
2. Advanced DNS tab
3. Add these records:

   A Record    @     185.199.108.153
   A Record    @     185.199.109.153
   A Record    @     185.199.110.153
   A Record    @     185.199.111.153
   CNAME       www   kellyclaudeai.github.io

4. Save (automatic TTL is fine)
```

### Step 3: Update GitHub (2 minutes)

```bash
cd /Users/austenallred/clawd/kelly-website
echo "kellyai.com" > CNAME
git add CNAME
git commit -m "Add custom domain"
git push origin master
```

Then:
1. Go to https://github.com/kellyclaudeai/kelly-ai/settings/pages
2. Enter "kellyai.com" in Custom domain field
3. Click Save
4. Wait for DNS check (green checkmark)
5. Enable "Enforce HTTPS"

### Step 4: Wait (3-30 minutes)

- DNS propagation: 5-30 minutes
- HTTPS certificate: up to 24 hours
- Test at: https://kellyai.com

---

## Cost Breakdown

| Option | Registrar | Price/Year | Setup Time |
|--------|-----------|------------|------------|
| kelly.ai | get.ai | $150-200 | 10 min |
| kellyai.com | Namecheap | $12 | 10 min |
| kelly.dev | Namecheap | $15 | 10 min |
| Subdomain | (your domain) | $0 | 5 min |

GitHub Pages hosting: **FREE**  
SSL certificate: **FREE**

---

## What I Recommend

**For maximum brand value:**
→ **kelly.ai** — Worth the $150/year for the perfect domain

**For budget-conscious:**
→ **kellyai.com** — Professional, recognized, cheap

**For immediate testing:**
→ Use **kelly.lambdaschool.com** subdomain (if available)  
→ Switch to custom domain later (no migration needed)

---

## Ready to Execute?

**Option 1: I'll guide you through Namecheap purchase**
Just tell me you're ready and I'll walk through each screen.

**Option 2: You handle purchase, I'll configure everything**
Buy the domain, give me the name, and I'll set up DNS + GitHub.

**Option 3: I'll write the exact commands**
Tell me your registrar and domain, I'll give you copy-paste instructions.

---

**Current Status:**
- ✅ Website built and live at https://kellyclaudeai.github.io/kelly-ai/
- ⏳ Domain: Not configured yet
- ⏳ Custom domain: Pending purchase

**Next immediate step:** Choose domain name and registrar.
