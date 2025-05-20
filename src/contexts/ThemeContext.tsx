import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react';
import { create } from 'zustand';

type Theme = 'light' | 'dark';

interface ThemeContextType {
  theme: Theme;
  toggleTheme: () => void;
}

// Create a Zustand store for theme management that can be used anywhere
export const useThemeStore = create<ThemeContextType>((set) => ({
  theme: 'dark', // default theme
  toggleTheme: () => {
    set((state) => {
      const newTheme = state.theme === 'light' ? 'dark' : 'light';
      localStorage.setItem('theme', newTheme);
      document.documentElement.classList.toggle('dark', newTheme === 'dark');
      return { theme: newTheme };
    });
  }
}));

const ThemeContext = createContext<ThemeContextType | undefined>(undefined);

export function ThemeProvider({ children }: { children: ReactNode }) {
  // Use the theme store to get the current theme and toggle function
  const { theme, toggleTheme } = useThemeStore();
  
  // Initialize theme from localStorage or system preference on mount
  useEffect(() => {
    const savedTheme = localStorage.getItem('theme') as Theme | null;
    if (savedTheme) {
      // Update the store with the saved theme
      useThemeStore.setState({ theme: savedTheme });
      document.documentElement.classList.toggle('dark', savedTheme === 'dark');
    } else {
      // Check system preference
      const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
      const defaultTheme = prefersDark ? 'dark' : 'light';
      useThemeStore.setState({ theme: defaultTheme });
      document.documentElement.classList.toggle('dark', defaultTheme === 'dark');
    }
  }, []);

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
}

export function useTheme() {
  // This hook can still be used for React components
  const context = useContext(ThemeContext);
  if (context === undefined) {
    throw new Error('useTheme must be used within a ThemeProvider');
  }
  return context;
}