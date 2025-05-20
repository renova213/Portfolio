import { useEffect, useRef } from 'react';
import TerminalHeader from './TerminalHeader';
import TerminalOutput from './TerminalOutput';
import TerminalInput from './TerminalInput';
import CommandSuggestions from './CommandSuggestions';
import { useTerminalStore } from '@/store/terminalStore';
import { useTheme } from '@/contexts/ThemeContext';

export default function Terminal() {
  const terminalRef = useRef<HTMLDivElement>(null);
  const { showSuggestions, setShowSuggestions } = useTerminalStore();
  const { theme } = useTheme();

  useEffect(() => {
    // Handle clicks outside suggestions box to hide it
    const handleClickOutside = (event: MouseEvent) => {
      if (showSuggestions && terminalRef.current && !terminalRef.current.contains(event.target as Node)) {
        setShowSuggestions(false);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [showSuggestions, setShowSuggestions]);

  return (
    <div 
      className="flex flex-col max-w-4xl w-full mx-auto h-[95vh] md:h-[85vh] p-1 md:p-4 my-2 md:my-8 
      bg-terminal-bg dark:bg-gray-900 rounded-md shadow-2xl md:rounded-xl 
      border border-gray-800 dark:border-gray-700 overflow-hidden transition-colors duration-200" 
      ref={terminalRef}
    >
      <TerminalHeader />
      <TerminalOutput />
      <div className="border-t border-gray-800 dark:border-gray-700 p-2 relative">
        <TerminalInput />
        {showSuggestions && <CommandSuggestions />}
      </div>
    </div>
  );
}
