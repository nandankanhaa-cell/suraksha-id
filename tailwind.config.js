/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        gov: {
          blue: '#0B5ED7',
          darkBlue: '#084298',
          navy: '#052C65',
          lightBlue: '#E7F1FF',
          bg: '#F5F7FA',
          darkBg: '#0F172A',
          cardDark: '#1E293B',
          success: '#28A745',
          warning: '#FFC107',
          danger: '#DC3545',
        }
      },
      fontFamily: {
        sans: ['Inter', 'Roboto', 'sans-serif'],
      },
      boxShadow: {
        'gov': '0 4px 20px -2px rgba(11, 94, 215, 0.12), 0 2px 6px -1px rgba(0, 0, 0, 0.06)',
        'gov-lg': '0 10px 30px -4px rgba(11, 94, 215, 0.18), 0 4px 12px -2px rgba(0, 0, 0, 0.08)',
        'alert': '0 0 25px rgba(220, 53, 69, 0.4)',
      },
      animation: {
        'scan': 'scan 2s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'pulse-fast': 'pulse 1s cubic-bezier(0.4, 0, 0.6, 1) infinite',
        'shield-glow': 'shieldGlow 3s infinite alternate',
        'slide-in-right': 'slideInRight 0.28s cubic-bezier(0.16, 1, 0.3, 1) both',
        'fade-in': 'fadeIn 0.2s ease-out both',
        'scale-in': 'scaleIn 0.18s cubic-bezier(0.16, 1, 0.3, 1) both',
      },
      keyframes: {
        scan: {
          '0%, 100%': { top: '5%' },
          '50%': { top: '90%' },
        },
        shieldGlow: {
          '0%': { filter: 'drop-shadow(0 0 6px rgba(11, 94, 215, 0.4))' },
          '100%': { filter: 'drop-shadow(0 0 16px rgba(11, 94, 215, 0.8))' },
        },
        slideInRight: {
          '0%': { transform: 'translateX(100%)' },
          '100%': { transform: 'translateX(0)' },
        },
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        scaleIn: {
          '0%': { opacity: '0', transform: 'scale(0.92) translateY(-4px)' },
          '100%': { opacity: '1', transform: 'scale(1) translateY(0)' },
        },
      }
    },
  },
  plugins: [],
}
