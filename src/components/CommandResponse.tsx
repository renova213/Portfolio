import React from 'react';
import Help from './responses/Help';
import About from './responses/About';
import Skills from './responses/Skills';
import Projects from './responses/Projects';
import Contact from './responses/Contact';
import NotFound from './responses/NotFound';
import Theme from './responses/Theme';
import Chat from './responses/Chat';

type CommandResponseProps = {
  responseType: string;
};

export default function CommandResponse({ responseType }: CommandResponseProps) {
  switch (responseType) {
    case 'help':
      return <Help />;
      
    case 'about':
      return <About />;
      
    case 'skills':
      return <Skills />;
      
    case 'projects':
      return <Projects />;
      
    case 'contact':
      return <Contact />;
      
    case 'theme':
      return <Theme />;
      
    case 'chat':
      return <Chat />;
      
    case 'command-not-found':
      return <NotFound />;
      
    default:
      return null;
  }
}
