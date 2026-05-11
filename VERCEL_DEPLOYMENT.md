# SpeedUp Aviation - Vercel Deployment Guide

This is a monorepo project with the following structure:

- **artifacts/speedup** - Main React application (production)
- **artifacts/mockup-sandbox** - Component preview/mockup app
- **artifacts/api-server** - Node.js/Express API server (optional)
- **lib/** - Shared libraries (api-client-react, api-spec, api-zod, db)

## Deployment Configuration

The project is configured for deployment on Vercel using a monorepo setup.

### What Gets Deployed

- **Primary app**: `artifacts/speedup/dist/public` - The main SpeedUp application
- **Output directory**: `./artifacts/speedup/dist/public`
- **Build command**: `pnpm run build`
- **Install command**: `pnpm install`

### Environment Variables

Required environment variables for Vercel:
- `PORT` (default: 3000)
- `BASE_PATH` (default: /)

### Build Process

1. Typechecking across all packages
2. Building all libraries and artifacts
3. The speedup app is built with Vite and output to `dist/public`

### Deployment Steps

1. **Connect your repository to Vercel**
   ```bash
   vercel login
   ```

2. **Deploy from the project root**
   ```bash
   vercel deploy
   ```

3. **Alternatively, import the project in Vercel Dashboard**
   - Go to https://vercel.com/new
   - Select "Other" → "Project from Git"
   - Connect your repository
   - Vercel will auto-detect the configuration

### Local Development

Start the main application:
```bash
cd artifacts/speedup
PORT=5173 BASE_PATH=/ pnpm dev
```

Or from the root with pnpm workspace filter:
```bash
PORT=5173 BASE_PATH=/ pnpm --filter @workspace/speedup dev
```

### Build Locally

```bash
pnpm install
pnpm run build
```

All build artifacts will be created in respective `dist` directories.

### Production Build Output

- **Main app**: `artifacts/speedup/dist/public/`
- **Mockup app**: `artifacts/mockup-sandbox/dist/`
- **API server**: `artifacts/api-server/dist/`

## Project Information

- **Package Manager**: pnpm (monorepo workspace)
- **Frontend Framework**: React + Vite
- **Backend**: Express.js (optional)
- **UI Framework**: Radix UI + Tailwind CSS
- **Build Tool**: Vite + TypeScript
