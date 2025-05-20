import React, { useState } from 'react';
import { portfolioData } from '@/data/portfolioData';

export default function Contact() {
  const { contact } = portfolioData;
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  });
  const [formSubmitted, setFormSubmitted] = useState(false);
  
  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
  };
  
  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    // In a real application, this would send the form data to a server
    setFormSubmitted(true);
    
    // Reset form
    setFormData({
      name: '',
      email: '',
      message: ''
    });
    
    // Hide success message after 5 seconds
    setTimeout(() => {
      setFormSubmitted(false);
    }, 5000);
  };
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-bold text-lg md:text-xl">CONTACT INFORMATION</p>
      
      <div className="mt-4 grid grid-cols-1 md:grid-cols-2 gap-4">
        {contact.map((item, index) => (
          <div key={index} className="border border-terminal-gray/30 p-4 rounded-md hover:border-terminal-gray/50 transition-all duration-300 bg-terminal-gray/5">
            <p className="text-terminal-yellow font-medium mb-1">{item.type.charAt(0).toUpperCase() + item.type.slice(1)}</p>
            <a 
              href={item.url} 
              className="text-terminal-blue hover:underline flex items-center"
              target="_blank" 
              rel="noopener noreferrer"
            >
              {item.label}
            </a>
          </div>
        ))}
      </div>
      
      <div className="mt-6">
        <p className="text-terminal-green font-bold text-lg">SEND A MESSAGE</p>
        <div className="mt-3 border border-terminal-gray/30 p-4 rounded-md bg-terminal-gray/5">
          {formSubmitted ? (
            <div className="p-3 bg-terminal-green/10 border border-terminal-green/30 rounded-md text-terminal-green">
              <p className="font-medium">Message sent successfully!</p>
              <p className="text-sm mt-1">Thank you for your message. I'll get back to you soon.</p>
            </div>
          ) : (
            <form className="space-y-4" onSubmit={handleSubmit}>
              <div>
                <label className="block text-terminal-yellow font-medium text-sm mb-1">Name:</label>
                <input 
                  type="text" 
                  name="name"
                  value={formData.name}
                  onChange={handleChange}
                  className="w-full bg-terminal-bg dark:bg-gray-900 border border-terminal-gray/50 rounded-md px-3 py-2 focus:outline-none focus:border-terminal-blue text-terminal-text" 
                  placeholder="Enter your name"
                  required
                />
              </div>
              <div>
                <label className="block text-terminal-yellow font-medium text-sm mb-1">Email:</label>
                <input 
                  type="email" 
                  name="email"
                  value={formData.email}
                  onChange={handleChange}
                  className="w-full bg-terminal-bg dark:bg-gray-900 border border-terminal-gray/50 rounded-md px-3 py-2 focus:outline-none focus:border-terminal-blue text-terminal-text" 
                  placeholder="Enter your email"
                  required
                />
              </div>
              <div>
                <label className="block text-terminal-yellow font-medium text-sm mb-1">Message:</label>
                <textarea 
                  name="message"
                  value={formData.message}
                  onChange={handleChange}
                  className="w-full bg-terminal-bg dark:bg-gray-900 border border-terminal-gray/50 rounded-md px-3 py-2 focus:outline-none focus:border-terminal-blue text-terminal-text" 
                  rows={3} 
                  placeholder="Type your message here"
                  required
                ></textarea>
              </div>
              <button 
                type="submit" 
                className="bg-terminal-blue bg-opacity-20 text-terminal-blue px-4 py-2 rounded-md hover:bg-opacity-30 transition-colors font-medium"
              >
                Send Message
              </button>
            </form>
          )}
        </div>
      </div>
      
      <div className="mt-4 p-2 bg-terminal-gray/10 rounded-md text-sm border border-terminal-gray/20">
        <span className="text-xs text-terminal-gray italic">Type another command to continue exploring...</span>
      </div>
    </div>
  );
}
