import React, { forwardRef } from 'react';

const Cursor = forwardRef<HTMLSpanElement>((props, ref) => {
  return (
    <span 
      ref={ref} 
      className="absolute top-0 left-0 h-full w-[2px] bg-terminal-text animate-blink"
    />
  );
});

Cursor.displayName = 'Cursor';

export default Cursor;
