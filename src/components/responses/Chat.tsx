import React, { useState } from 'react';
import { useTerminalStore, GuestMessage } from '@/store/terminalStore';

export default function Chat() {
  const [name, setName] = useState('');
  const [message, setMessage] = useState('');
  const [showForm, setShowForm] = useState(true);
  const { guestMessages, addGuestMessage } = useTerminalStore();
  
  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    
    if (name.trim() && message.trim()) {
      addGuestMessage(name, message);
      setMessage('');
      setShowForm(false);
      
      // Show form again after 2 seconds
      setTimeout(() => {
        setShowForm(true);
      }, 2000);
    }
  };
  
  // Format timestamp to readable date
  const formatTimestamp = (timestamp: number) => {
    const date = new Date(timestamp);
    return date.toLocaleString(undefined, { 
      month: 'short', 
      day: 'numeric',
      hour: '2-digit', 
      minute: '2-digit'
    });
  };
  
  return (
    <div className="ml-6 mt-1">
      <p className="text-terminal-green font-bold text-lg md:text-xl">GUEST CHAT</p>
      
      <div className="mt-4">
        <p className="text-terminal-text">Leave a message for visitors to see!</p>
        
        {guestMessages.length > 0 ? (
          <div className="mt-4 border border-terminal-gray/30 rounded-md p-4 max-h-[300px] overflow-y-auto">
            {guestMessages.map((msg: GuestMessage) => (
              <div key={msg.id} className="mb-3 pb-3 border-b border-terminal-gray/20 last:border-0 last:mb-0 last:pb-0">
                <div className="flex justify-between items-center">
                  <span className="text-terminal-green font-medium">{msg.name}</span>
                  <span className="text-xs text-terminal-gray">{formatTimestamp(msg.timestamp)}</span>
                </div>
                <p className="mt-1 text-terminal-text">{msg.message}</p>
              </div>
            ))}
          </div>
        ) : (
          <div className="mt-4 p-3 bg-terminal-gray/10 rounded-md text-sm border border-terminal-gray/20">
            <p className="text-terminal-gray">No messages yet. Be the first to leave a message!</p>
          </div>
        )}
        
        <div className="mt-4">
          {showForm ? (
            <form onSubmit={handleSubmit} className="border border-terminal-gray/30 p-4 rounded-md bg-terminal-gray/5">
              <div className="mb-3">
                <label className="block text-terminal-yellow font-medium text-sm mb-1">Your Name:</label>
                <input 
                  type="text" 
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                  className="w-full bg-terminal-bg dark:bg-gray-900 border border-terminal-gray/50 rounded-md px-3 py-2 focus:outline-none focus:border-terminal-blue text-terminal-text" 
                  placeholder="Enter your name"
                  required
                />
              </div>
              <div className="mb-3">
                <label className="block text-terminal-yellow font-medium text-sm mb-1">Message:</label>
                <textarea 
                  value={message}
                  onChange={(e) => setMessage(e.target.value)}
                  className="w-full bg-terminal-bg dark:bg-gray-900 border border-terminal-gray/50 rounded-md px-3 py-2 focus:outline-none focus:border-terminal-blue text-terminal-text" 
                  rows={3} 
                  placeholder="Type your message here"
                  required
                ></textarea>
              </div>
              <button 
                type="submit" 
                className="bg-terminal-green bg-opacity-20 text-terminal-green px-4 py-2 rounded-md hover:bg-opacity-30 transition-colors font-medium"
              >
                Post Message
              </button>
            </form>
          ) : (
            <div className="p-3 bg-terminal-green/10 border border-terminal-green/30 rounded-md text-terminal-green">
              <p className="font-medium">Message posted successfully!</p>
              <p className="text-sm mt-1">Thank you for your message.</p>
            </div>
          )}
        </div>
      </div>
      
      <div className="mt-4 p-2 bg-terminal-gray/10 rounded-md text-sm border border-terminal-gray/20">
        <span className="text-xs text-terminal-gray italic">Type another command to continue exploring...</span>
      </div>
    </div>
  );
}