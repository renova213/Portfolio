import React from 'react';

export default function NotFound() {
  return (
    <div className="ml-6 mt-1">
      <span className="text-terminal-red">Command not found</span>
      <br />
      <span className="text-terminal-text">Type <span className="text-terminal-cyan">help</span> to see available commands.</span>
    </div>
  );
}
