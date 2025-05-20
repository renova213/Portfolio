import React from 'react';
import { useTerminalStore } from '@/store/terminalStore';
import ThemeToggle from './ThemeToggle';

export default function TerminalHeader() {
  const { username, hostname } = useTerminalStore();
  
  return (
    <div className="flex items-center p-2 h-8 bg-gray-900 dark:bg-gray-950 rounded-t-md mb-1">
      <div className="flex items-center space-x-2 ml-2">
        <div className="w-3 h-3 rounded-full bg-terminal-red cursor-pointer" title="Close"></div>
        <div className="w-3 h-3 rounded-full bg-terminal-yellow cursor-pointer" title="Minimize"></div>
        <div className="w-3 h-3 rounded-full bg-terminal-green cursor-pointer" title="Maximize"></div>
      </div>
      <div className="flex-1 text-center text-xs text-gray-400">
        {username}@{hostname} ~ /dev/portfolio
      </div>
      <div className="flex items-center mr-2">
        <ThemeToggle />
      </div>
    </div>
  );
}
