import { useRef, useEffect } from 'react';
import { useTerminalStore } from '@/store/terminalStore';

export default function CommandSuggestions() {
  const { 
    availableCommands, 
    suggestionsFilter, 
    setShowSuggestions 
  } = useTerminalStore();

  const suggestionsRef = useRef<HTMLDivElement>(null);
  
  // Filter commands based on input
  const filteredCommands = suggestionsFilter 
    ? availableCommands.filter(cmd => cmd.startsWith(suggestionsFilter))
    : availableCommands;
  
  // Position the suggestions box
  useEffect(() => {
    const inputEl = document.querySelector('input') as HTMLInputElement;
    
    if (inputEl && suggestionsRef.current) {
      const inputRect = inputEl.getBoundingClientRect();
      suggestionsRef.current.style.top = `${inputRect.bottom + 5}px`;
      suggestionsRef.current.style.left = `${inputRect.left + 20}px`; // Align with $ prompt
    }
  }, []);
  
  const handleSuggestionClick = (command: string) => {
    const inputEl = document.querySelector('input') as HTMLInputElement;
    if (inputEl) {
      inputEl.value = command;
      inputEl.focus();
    }
    setShowSuggestions(false);
  };

  return (
    <div 
      ref={suggestionsRef}
      className="mt-1 bg-gray-900 dark:bg-gray-800 rounded-md border border-gray-700 
      dark:border-gray-600 absolute z-10 shadow-lg"
    >
      <ul className="py-1">
        {filteredCommands.map((command) => (
          <li 
            key={command}
            onClick={() => handleSuggestionClick(command)}
            className="px-3 py-1 hover:bg-terminal-blue hover:bg-opacity-20 
            cursor-pointer text-terminal-cyan transition-colors duration-150"
          >
            {command}
          </li>
        ))}
      </ul>
    </div>
  );
}
