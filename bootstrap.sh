#!/bin/bash

echo "🚀 Bootstrapping Halashoe E-commerce..."

# Create folder structure
mkdir -p .devcontainer
mkdir -p .github/workflows
mkdir -p src/lib/components
mkdir -p src/routes/shop/\[id\]
mkdir -p src/routes/blog/\[slug\]
mkdir -p src/routes/cart
mkdir -p src/routes/checkout
mkdir -p src/routes/orders
mkdir -p src/routes/auth/login
mkdir -p src/routes/auth/signup
mkdir -p static/images
mkdir -p supabase/migrations

# Restore images
if [ -d "../temp-images" ]; then
  cp ../temp-images/* static/images/
  echo "✅ Images restored to static/images/"
fi

# Create package.json
cat > package.json << 'EOF'
{
  "name": "halashoe-ecommerce",
  "version": "1.0.0",
  "private": true,
  "scripts": {
    "dev": "vite dev",
    "build": "vite build",
    "preview": "vite preview"
  },
  "devDependencies": {
    "@sveltejs/adapter-static": "^3.0.1",
    "@sveltejs/kit": "^2.0.0",
    "@sveltejs/vite-plugin-svelte": "^3.0.0",
    "autoprefixer": "^10.4.16",
    "postcss": "^8.4.32",
    "svelte": "^4.2.7",
    "tailwindcss": "^3.3.6",
    "vite": "^5.0.3"
  },
  "dependencies": {
    "@supabase/supabase-js": "^2.39.0"
  },
  "type": "module"
}
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
.DS_Store
node_modules
/build
/.svelte-kit
/package
.env
.env.*
!.env.example
vite.config.js.timestamp-*
vite.config.ts.timestamp-*
EOF

# Create .env.example
cat > .env.example << 'EOF'
PUBLIC_SUPABASE_URL=your_supabase_project_url
PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
EOF

# Create README
cat > README.md << 'EOF'
# Halashoe E-commerce

Premium footwear e-commerce site built with SvelteKit + Supabase.

## Setup

1. Run: `npm install`
2. Configure Supabase (see docs)
3. Run: `npm run dev`
4. Visit: http://localhost:5173

## Deploy

Push to main branch - auto-deploys via GitHub Actions.
EOF

echo ""
echo "✅ Bootstrap complete!"
echo ""
echo "Next steps:"
echo "1. npm install"
echo "2. Copy config files from artifacts"
echo "3. npm run dev"
echo ""