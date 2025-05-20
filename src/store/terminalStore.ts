import { create } from "zustand";
import { useThemeStore } from "@/contexts/ThemeContext";

export type CommandEntry = {
  id: string;
  command: string;
  response: string;
  timestamp: number;
};

export type GuestMessage = {
  id: string;
  name: string;
  message: string;
  timestamp: number;
};

export type TerminalState = {
  commandHistory: string[];
  historyIndex: number;
  commandEntries: CommandEntry[];
  guestMessages: GuestMessage[];
  username: string;
  hostname: string;
  showSuggestions: boolean;
  suggestionsFilter: string;
  availableCommands: string[];

  // Actions
  addCommand: (command: string) => void;
  clearTerminal: () => void;
  navigateHistory: (direction: "up" | "down") => string;
  setHistoryIndex: (index: number) => void;
  setShowSuggestions: (show: boolean) => void;
  setSuggestionsFilter: (filter: string) => void;
  getCommandResponse: (command: string) => string;
  addGuestMessage: (name: string, message: string) => void;
};

export const useTerminalStore = create<TerminalState>((set, get) => ({
  commandHistory: [],
  historyIndex: -1,
  commandEntries: [],
  guestMessages: [],
  username: "rizco",
  hostname: "portfolio",
  showSuggestions: false,
  suggestionsFilter: "",
  availableCommands: [
    "about",
    "skills",
    "projects",
    "contact",
    "clear",
    "help",
    "theme",
    "chat",
  ],

  addCommand: (command) => {
    if (!command.trim()) return;

    const response = get().getCommandResponse(command);
    const newEntry: CommandEntry = {
      id: Date.now().toString(),
      command: command.trim(),
      response,
      timestamp: Date.now(),
    };

    set((state) => ({
      commandEntries: [...state.commandEntries, newEntry],
      commandHistory: [command, ...state.commandHistory],
      historyIndex: -1,
    }));
  },

  clearTerminal: () => set({ commandEntries: [] }),

  navigateHistory: (direction) => {
    const { commandHistory, historyIndex } = get();

    if (direction === "up" && historyIndex < commandHistory.length - 1) {
      const newIndex = historyIndex + 1;
      set({ historyIndex: newIndex });
      return commandHistory[newIndex];
    } else if (direction === "down") {
      if (historyIndex > 0) {
        const newIndex = historyIndex - 1;
        set({ historyIndex: newIndex });
        return commandHistory[newIndex];
      } else {
        set({ historyIndex: -1 });
        return "";
      }
    }

    return historyIndex >= 0 ? commandHistory[historyIndex] : "";
  },

  setHistoryIndex: (index) => set({ historyIndex: index }),

  setShowSuggestions: (show) => set({ showSuggestions: show }),

  setSuggestionsFilter: (filter) => set({ suggestionsFilter: filter }),

  addGuestMessage: (name, message) => {
    if (!name.trim() || !message.trim()) return;

    const newMessage: GuestMessage = {
      id: Date.now().toString(),
      name: name.trim(),
      message: message.trim(),
      timestamp: Date.now(),
    };

    set((state) => ({
      guestMessages: [...state.guestMessages, newMessage],
    }));
  },

  getCommandResponse: (command) => {
    const cmd = command.trim().toLowerCase();

    if (cmd === "clear") {
      setTimeout(() => get().clearTerminal(), 0);
      return "";
    }

    if (cmd === "help") {
      return "help";
    }

    if (cmd === "about") {
      return "about";
    }

    if (cmd === "skills") {
      return "skills";
    }

    if (cmd === "projects" || cmd === "projects --more") {
      return "projects";
    }

    if (cmd === "contact") {
      return "contact";
    }

    if (cmd === "theme") {
      // Toggle theme when the theme command is used
      const { toggleTheme } = useThemeStore.getState();
      setTimeout(() => toggleTheme(), 0);
      return "theme";
    }

    if (cmd === "chat") {
      return "chat";
    }

    return "command-not-found";
  },
}));
