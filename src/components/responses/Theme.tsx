import React from 'react';
import { useThemeStore } from '@/contexts/ThemeContext';

export default function Theme() {
  const { theme } = useThemeStore();
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-medium">Current theme: <span className="font-bold">{theme === 'dark' ? 'DARK' : 'LIGHT'}</span> mode</p>
      <p className="text-terminal-text mt-2">You can toggle the theme by:</p>
      <ul className="list-disc list-inside ml-3 mt-1">
        <li className="text-terminal-text">Typing <span className="text-terminal-cyan">theme</span> command again</li>
        <li className="text-terminal-text">Clicking the icon in the top-right corner</li>
      </ul>
    </div>
  );
}