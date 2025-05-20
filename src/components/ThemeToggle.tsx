import React from 'react';
import { Moon, Sun } from 'lucide-react';
import { useThemeStore } from '@/contexts/ThemeContext';

export default function ThemeToggle() {
  const { theme, toggleTheme } = useThemeStore();
  
  return (
    <button
      onClick={toggleTheme}
      className="p-1 rounded-md hover:bg-gray-700 transition-colors"
      title={theme === 'dark' ? 'Switch to light mode' : 'Switch to dark mode'}
    >
      {theme === 'dark' ? (
        <Moon size={16} className="text-terminal-yellow" />
      ) : (
        <Sun size={16} className="text-terminal-yellow" />
      )}
    </button>
  );
}