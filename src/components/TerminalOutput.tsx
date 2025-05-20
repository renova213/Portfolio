import { useEffect, useRef } from 'react';
import { useTerminalStore } from '@/store/terminalStore';
import CommandResponse from './CommandResponse';
import Welcome from './responses/Welcome';

export default function TerminalOutput() {
  const { commandEntries, username, hostname } = useTerminalStore();
  const outputRef = useRef<HTMLDivElement>(null);
  
  // Auto-scroll to bottom when new commands are added
  useEffect(() => {
    if (outputRef.current) {
      outputRef.current.scrollTop = outputRef.current.scrollHeight;
    }
  }, [commandEntries]);

  return (
    <div 
      id="terminal-output" 
      ref={outputRef}
      className="terminal-output flex-1 p-2 md:p-4 overflow-y-auto space-y-2 text-sm font-mono"
    >
      {/* Welcome Message - Always displayed */}
      <Welcome />
      
      {/* Command History */}
      {commandEntries.map((entry) => (
        <div key={entry.id} className="animate-fadein">
          <div className="flex">
            <span className="text-terminal-prompt mr-2 font-medium">{username}@{hostname}:~$</span>
            <span className="text-terminal-cyan">{entry.command}</span>
          </div>
          <CommandResponse responseType={entry.response} />
        </div>
      ))}
    </div>
  );
}
