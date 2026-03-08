---
name: content-optimizer
description: Analyze and optimize content for search engine rankings
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["SEO_API_KEY"] },
        "primaryEnv": "SEO_API_KEY",
        "emoji": "✍️",
      },
  }
---

# Content Optimizer Skill

Analyze and optimize content for search engine rankings.

## When to Use

- Before publishing new content
- Optimizing existing content
- Content audits
- SEO content reviews

## How It Works

1. Analyze target keyword for content
2. Review current content structure
3. Check on-page SEO factors
4. Identify optimization opportunities
5. Generate recommendations

## On-Page SEO Factors

### Title Tag
- Include target keyword
- 50-60 characters optimal
- Compelling and clickable

### Meta Description
- Include target keyword
- 150-160 characters optimal
- Clear value proposition

### Headings (H1, H2, H3)
- One H1 per page
- Include keywords in subheadings
- Logical content structure

### Content
- Keyword density: 1-2%
- Include related keywords
- Minimum word count by intent
- Original, valuable content

### Technical
- URL includes keyword
- Image alt text
- Internal linking
- Page speed

## Optimization Recommendations

```
## Content Optimization Report

**Page**: /seo-guide
**Target Keyword**: SEO guide
**Current Score**: 65/100

### Issues Found

1. **Title tag** - Too long (70 chars), missing keyword
2. **Meta description** - Missing
3. **Content length** - Below recommended (500 words)
4. **Internal links** - None found

### Recommendations

1. Rewrite title: "Complete SEO Guide for Beginners [2026]"
2. Add meta description
3. Expand content to 1500+ words
4. Add 3-5 internal links
```

## Configuration

Set via environment variables:

- `SEO_API_KEY` - API for SEO tools
- `TARGET_WORD_COUNT` - Minimum content length
- `KEYWORD_DENSITY_TARGET` - Target keyword density

## Notes

- Focus on user value first
- Don't over-optimize
- Keep content natural
- Update old content regularly
