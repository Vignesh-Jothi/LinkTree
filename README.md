# LinkTree - Modern Portfolio

A LinkTree-style portfolio website with modern animations and responsive design.

## 📁 Project Structure

```
LinkTree/
├── assets/                 # Static assets
│   ├── css/               # Modular CSS files
│   │   ├── base.css       # Variables, reset, body, container
│   │   ├── components.css # Individual UI components
│   │   ├── animations.css # Keyframes and animations
│   │   ├── responsive.css # Media queries
│   │   └── style.css      # Main CSS (imports all modules)
│   ├── js/                # JavaScript files
│   │   └── main.js        # Main application logic
│   └── images/            # Image assets
├── src/                   # Source files (for development)
├── dist/                  # Production build output
├── index.html             # Main HTML file
├── build.sh              # Build script
├── package.json          # Dependencies and scripts
└── README.md             # This file
```

## 🛠️ Development

### Build for Production
```bash
npm run build
# or
./build.sh
```

## 🎨 CSS Architecture

### Modular CSS Files

1. **`base.css`** - Foundation styles
   - CSS custom properties (variables)
   - CSS reset
   - Body and container styles
   - Background effects

2. **`components.css`** - Component-specific styles
   - Greeting, avatar, role sections
   - Links, info-section, footer
   - Individual component styling

3. **`animations.css`** - Animation definitions
   - All keyframes
   - Animation timing and effects
   - Hardware-accelerated transforms

4. **`responsive.css`** - Responsive design
   - Tablet breakpoints
   - Mobile breakpoints
   - Adaptive layouts


## 🚀 Build Process

The build process optimizes assets for production:

1. **CSS Processing**: Combines modular CSS files
2. **JavaScript Minification**: Reduces JS bundle size
3. **Asset Optimization**: Compresses images and fonts
4. **Cache Busting**: Adds version hashes for cache invalidation

## 📱 Features

- **Responsive Design**: Works on all devices
- **Smooth Animations**: CSS-based animations with hardware acceleration
- **Modern UI**: Glassmorphism effects and gradients
- **Accessibility**: Semantic HTML and keyboard navigation
- **Performance**: Optimized loading and rendering

## 🔧 Customization

### Adding New Components
1. Create styles in `assets/css/components.css`
2. Add responsive styles in `assets/css/responsive.css`
3. Update animations in `assets/css/animations.css` if needed

### Modifying Colors
Update CSS custom properties in `assets/css/base.css`:
```css
:root {
  --primary-bg: #000000;
  --accent-color: #ffffff;
  /* ... other variables */
}
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make changes following the modular architecture
4. Test performance impact
5. Submit a pull request

## � Deployment

### GitHub Pages (Recommended)

1. **Automatic Deployment**: The project includes GitHub Actions workflow for automatic deployment
2. **Manual Setup**:
   - Go to your repository settings
   - Navigate to "Pages" section
   - Select "Deploy from a branch"
   - Choose `main` branch and `/docs` folder
   - Save settings

3. **Manual Build & Deploy**:
   ```bash
   ./build.sh
   # Commit and push the docs/ folder
   ```

### Other Platforms

The `dist/` folder contains production-ready files that can be deployed to:
- Netlify
- Vercel
- AWS S3 + CloudFront
- Any static web host