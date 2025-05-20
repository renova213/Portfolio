import React from 'react';
import { useTerminalStore } from '@/store/terminalStore';
import { useTheme } from '@/contexts/ThemeContext';

export default function Help() {
  const { availableCommands } = useTerminalStore();
  const { theme, toggleTheme } = useTheme();
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-text font-medium mb-2">Available commands:</p>
      <ul className="list-disc list-inside ml-4 text-terminal-text space-y-1">
        <li><span className="text-terminal-cyan font-medium">about</span> - Learn about me</li>
        <li><span className="text-terminal-cyan font-medium">skills</span> - View my technical skills</li>
        <li><span className="text-terminal-cyan font-medium">projects</span> - Browse my portfolio projects</li>
        <li><span className="text-terminal-cyan font-medium">contact</span> - Get in touch with me</li>
        <li><span className="text-terminal-cyan font-medium">chat</span> - View and leave guest messages</li>
        <li><span className="text-terminal-cyan font-medium">clear</span> - Clear the terminal</li>
        <li><span className="text-terminal-cyan font-medium">help</span> - Show this help menu</li>
        <li><span className="text-terminal-cyan font-medium">theme</span> - Toggle {theme === 'dark' ? 'light' : 'dark'} mode</li>
      </ul>
      <div className="mt-4 p-2 bg-terminal-blue/10 rounded-md border border-terminal-blue/20">
        <p className="text-terminal-blue font-medium">Pro tips:</p>
        <ul className="mt-1 text-xs text-terminal-text space-y-1">
          <li>• Use <span className="text-terminal-cyan">Tab</span> for command completion</li>
          <li>• Press <span className="text-terminal-cyan">↑/↓</span> for command history</li>
          <li>• Click on the moon/sun icon in the top right to toggle theme</li>
        </ul>
      </div>
    </div>
  );
}
