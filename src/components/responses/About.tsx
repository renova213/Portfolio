import React from 'react';
import { portfolioData } from '@/data/portfolioData';

export default function About() {
  const { about } = portfolioData;
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-bold text-lg md:text-xl">ABOUT ME</p>
      <div className="mt-3 space-y-3">
        {about.summary.map((paragraph, index) => (
          <p key={index} className="text-terminal-text leading-relaxed">{paragraph}</p>
        ))}
      </div>
      <div className="mt-4 p-3 border border-terminal-gray/20 rounded-md bg-terminal-green/5">
        <p className="text-terminal-green font-medium mb-2">Education:</p>
        <ul className="list-disc list-inside ml-2 space-y-1.5">
          {about.education.map((item, index) => (
            <li key={index} className="text-terminal-text">{item}</li>
          ))}
        </ul>
      </div>
      <div className="mt-4 p-2 bg-terminal-gray/10 rounded-md text-sm border border-terminal-gray/20">
        <span className="text-xs text-terminal-gray italic">Type another command to continue exploring...</span>
      </div>
    </div>
  );
}
