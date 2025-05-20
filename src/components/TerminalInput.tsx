import { useState, useRef, useEffect } from 'react';
import { useTerminalStore } from '@/store/terminalStore';
import Cursor from './Cursor';
import { getTextWidth } from '@/lib/utils';

export default function TerminalInput() {
  const [inputValue, setInputValue] = useState('');
  const inputRef = useRef<HTMLInputElement>(null);
  const cursorRef = useRef<HTMLSpanElement>(null);
  
  const { 
    addCommand, 
    navigateHistory, 
    availableCommands,
    setShowSuggestions,
    setSuggestionsFilter,
    username,
    hostname
  } = useTerminalStore();

  // Position the cursor
  useEffect(() => {
    if (inputRef.current && cursorRef.current) {
      const font = window.getComputedStyle(inputRef.current).font;
      const inputWidth = getTextWidth(inputValue, font);
      if (cursorRef.current) {
        cursorRef.current.style.left = `${inputWidth}px`;
      }
    }
  }, [inputValue]);

  // Focus the input whenever the terminal is clicked
  useEffect(() => {
    const terminalOutput = document.getElementById('terminal-output');
    
    const handleClick = () => {
      if (inputRef.current) {
        inputRef.current.focus();
      }
    };
    
    if (terminalOutput) {
      terminalOutput.addEventListener('click', handleClick);
    }
    
    // Focus input on component mount
    if (inputRef.current) {
      inputRef.current.focus();
    }
    
    return () => {
      if (terminalOutput) {
        terminalOutput.removeEventListener('click', handleClick);
      }
    };
  }, []);

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setInputValue(e.target.value);
  };

  const handleKeyDown = (e: React.KeyboardEvent<HTMLInputElement>) => {
    // Enter key - process command
    if (e.key === 'Enter') {
      if (inputValue.trim()) {
        addCommand(inputValue);
        setInputValue('');
      }
    }
    
    // Up/Down arrows - navigate history
    if (e.key === 'ArrowUp') {
      e.preventDefault();
      const historyCommand = navigateHistory('up');
      setInputValue(historyCommand);
    } else if (e.key === 'ArrowDown') {
      e.preventDefault();
      const historyCommand = navigateHistory('down');
      setInputValue(historyCommand);
    }
    
    // Tab key - command completion
    if (e.key === 'Tab') {
      e.preventDefault();
      
      if (inputValue.trim()) {
        const matches = availableCommands.filter(cmd => 
          cmd.startsWith(inputValue.toLowerCase())
        );
        
        if (matches.length === 1) {
          // Single match - autocomplete
          setInputValue(matches[0]);
        } else if (matches.length > 1) {
          // Multiple matches - show suggestions
          setSuggestionsFilter(inputValue.toLowerCase());
          setShowSuggestions(true);
        }
      }
    }
  };

  return (
    <div className="flex items-center text-sm">
      <span className="text-terminal-prompt mr-2 font-medium">{username}@{hostname}:~$</span>
      <div className="flex-1 relative">
        <input 
          ref={inputRef}
          type="text" 
          value={inputValue}
          onChange={handleInputChange}
          onKeyDown={handleKeyDown}
          className="w-full bg-transparent border-none outline-none text-terminal-cyan"
          autoComplete="off"
          spellCheck="false"
        />
        <Cursor ref={cursorRef} />
      </div>
    </div>
  );
}
