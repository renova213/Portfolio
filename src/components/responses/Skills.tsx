import React from 'react';
import { portfolioData } from '@/data/portfolioData';

export default function Skills() {
  const { skills } = portfolioData;
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-bold text-lg md:text-xl">TECHNICAL SKILLS</p>
      
      <div className="mt-4">
        <p className="text-terminal-blue font-medium mb-2">Mobile Development:</p>
        <div className="mt-1 flex flex-wrap gap-2">
          {skills.mobile.map((skill, index) => (
            <span key={index} className="px-3 py-1.5 rounded-md bg-opacity-20 bg-terminal-blue text-terminal-blue text-sm transition-all duration-200 hover:bg-opacity-30">
              {skill}
            </span>
          ))}
        </div>
      </div>
      
      <div className="mt-4">
        <p className="text-terminal-purple font-medium mb-2">Frontend:</p>
        <div className="mt-1 flex flex-wrap gap-2">
          {skills.frontend.map((skill, index) => (
            <span key={index} className="px-3 py-1.5 rounded-md bg-opacity-20 bg-terminal-purple text-terminal-purple text-sm transition-all duration-200 hover:bg-opacity-30">
              {skill}
            </span>
          ))}
        </div>
      </div>
      
      <div className="mt-4">
        <p className="text-terminal-yellow font-medium mb-2">Backend & Tools:</p>
        <div className="mt-1 flex flex-wrap gap-2">
          {skills.backend.map((skill, index) => (
            <span key={index} className="px-3 py-1.5 rounded-md bg-opacity-20 bg-terminal-yellow text-terminal-yellow text-sm transition-all duration-200 hover:bg-opacity-30">
              {skill}
            </span>
          ))}
        </div>
      </div>
      
      <div className="mt-4">
        <p className="text-terminal-cyan font-medium mb-2">Other Skills:</p>
        <ul className="list-disc list-inside ml-4 space-y-1">
          {skills.other.map((skill, index) => (
            <li key={index} className="text-terminal-text">{skill}</li>
          ))}
        </ul>
      </div>
      
      <div className="mt-4 p-2 bg-terminal-gray/10 rounded-md text-sm border border-terminal-gray/20">
        <span className="text-xs text-terminal-gray italic">Type another command to continue exploring...</span>
      </div>
    </div>
  );
}
