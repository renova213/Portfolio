import React from 'react';

export default function Welcome() {
  return (
    <div className="mt-4 mb-6 text-center">
      <h1 className="text-3xl md:text-5xl font-bold bg-gradient-to-r from-terminal-green to-terminal-blue bg-clip-text text-transparent animate-pulse">
        WELCOME!
      </h1>
      
      <p className="text-xl md:text-2xl mt-3 text-terminal-cyan font-semibold">
        Rizco Renova's Portfolio
      </p>
      
      <div className="mt-5 border-t border-b border-terminal-gray/30 py-4 px-2">
        <p className="text-terminal-text text-lg">This is my interactive terminal portfolio. Explore my work and skills using simple commands!</p>
        <p className="text-terminal-text mt-3 font-medium">Type <span className="text-terminal-green font-bold">help</span> to see all available commands.</p>
      </div>
      
      <div className="mt-5 text-sm text-terminal-gray italic">
        Try typing commands like <span className="text-terminal-cyan not-italic">about</span>, <span className="text-terminal-cyan not-italic">skills</span>, or <span className="text-terminal-cyan not-italic">projects</span>
      </div>
    </div>
  );
}