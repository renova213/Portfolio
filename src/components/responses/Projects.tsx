import React, { useState } from 'react';
import { portfolioData } from '@/data/portfolioData';

export default function Projects() {
  const { projects } = portfolioData;
  const [expandedProject, setExpandedProject] = useState<number | null>(null);
  
  const toggleProjectDetails = (index: number) => {
    if (expandedProject === index) {
      setExpandedProject(null);
    } else {
      setExpandedProject(index);
    }
  };
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-bold text-lg md:text-xl">PROJECTS</p>
      
      {projects.map((project, index) => (
        <div key={index} className="mt-4 border border-terminal-gray dark:border-terminal-gray/50 p-3 md:p-4 rounded-md transition-all duration-300 hover:shadow-md">
          <div className="flex flex-col sm:flex-row justify-between items-start gap-2">
            <h3 className="text-terminal-cyan font-bold text-lg flex items-center">
              {project.title}
              {project.year && (
                <span className="ml-2 text-xs text-terminal-gray font-normal">({project.year})</span>
              )}
            </h3>
            <span className="text-xs text-terminal-yellow bg-terminal-yellow bg-opacity-20 px-2 py-1 rounded whitespace-nowrap">
              {project.platform}
            </span>
          </div>
          
          <p className="mt-2">{project.description}</p>
          
          {expandedProject === index && (
            <div className="mt-3 animate-fadein">
              {project.screenshotUrl && (
                <div className="mb-3 rounded-md overflow-hidden border border-terminal-gray/20">
                  <img 
                    src={project.screenshotUrl} 
                    alt={`${project.title} screenshot`} 
                    className="w-full h-auto object-cover"
                  />
                </div>
              )}
              
              {project.longDescription && (
                <p className="mb-3 text-sm">{project.longDescription}</p>
              )}
              
              {project.role && (
                <div className="mb-2">
                  <span className="text-terminal-purple font-medium">Role: </span>
                  <span>{project.role}</span>
                </div>
              )}
              
              {project.features && project.features.length > 0 && (
                <div className="mb-3">
                  <p className="text-terminal-green font-medium">Key Features:</p>
                  <ul className="list-disc list-inside ml-2 mt-1">
                    {project.features.map((feature, fIndex) => (
                      <li key={fIndex} className="text-sm">{feature}</li>
                    ))}
                  </ul>
                </div>
              )}
            </div>
          )}
          
          <div className="mt-3 flex flex-wrap gap-2">
            {project.technologies.map((tech, techIndex) => (
              <span 
                key={techIndex} 
                className="text-xs text-terminal-blue bg-terminal-blue/10 px-2 py-1 rounded-full"
              >
                {tech}
              </span>
            ))}
          </div>
          
          <div className="mt-3 flex flex-wrap gap-3">
            {project.links.demo && (
              <a href={project.links.demo} className="text-terminal-blue hover:underline text-sm">
                View Demo
              </a>
            )}
            {project.links.github && (
              <a href={project.links.github} className="text-terminal-blue hover:underline text-sm">
                GitHub
              </a>
            )}
            {project.links.appStore && (
              <a href={project.links.appStore} className="text-terminal-blue hover:underline text-sm">
                App Store
              </a>
            )}
            {project.links.playStore && (
              <a href={project.links.playStore} className="text-terminal-blue hover:underline text-sm">
                Play Store
              </a>
            )}
            {project.links.caseStudy && (
              <a href={project.links.caseStudy} className="text-terminal-blue hover:underline text-sm">
                Case Study
              </a>
            )}
            {project.links.website && (
              <a href={project.links.website} className="text-terminal-blue hover:underline text-sm">
                Website
              </a>
            )}
          </div>
          
          <button
            onClick={() => toggleProjectDetails(index)}
            className="mt-3 text-terminal-gray hover:text-terminal-cyan text-xs underline transition-colors"
          >
            {expandedProject === index ? "Show less details" : "Show more details"}
          </button>
        </div>
      ))}
      
      <div className="mt-3 text-xs text-terminal-gray italic">Type <span className="text-terminal-cyan">projects</span> to view projects or <span className="text-terminal-cyan">help</span> for more commands...</div>
    </div>
  );
}
