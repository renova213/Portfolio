import { create } from 'zustand';

interface PortfolioStore {
  // Theme state
  isDark: boolean;
  setIsDark: (isDark: boolean) => void;
  toggleTheme: () => void;

  // Navigation state
  activeSection: string;
  setActiveSection: (section: string) => void;
  isMenuOpen: boolean;
  setIsMenuOpen: (isOpen: boolean) => void;
  toggleMenu: () => void;

  // Projects state
  selectedFilter: string;
  setSelectedFilter: (filter: string) => void;
  selectedProject: string | null;
  setSelectedProject: (projectId: string | null) => void;

  // Skills animation state
  skillsAnimated: boolean;
  setSkillsAnimated: (animated: boolean) => void;
}

export const usePortfolioStore = create<PortfolioStore>((set, get) => ({
  // Theme state
  isDark: false,
  setIsDark: (isDark) => set({ isDark }),
  toggleTheme: () => {
    const { isDark } = get();
    set({ isDark: !isDark });
  },

  // Navigation state
  activeSection: 'home',
  setActiveSection: (section) => set({ activeSection: section }),
  isMenuOpen: false,
  setIsMenuOpen: (isOpen) => set({ isMenuOpen: isOpen }),
  toggleMenu: () => {
    const { isMenuOpen } = get();
    set({ isMenuOpen: !isMenuOpen });
  },

  // Projects state
  selectedFilter: 'all',
  setSelectedFilter: (filter) => set({ selectedFilter: filter }),
  selectedProject: null,
  setSelectedProject: (projectId) => set({ selectedProject: projectId }),

  // Skills animation state
  skillsAnimated: false,
  setSkillsAnimated: (animated) => set({ skillsAnimated: animated }),
}));
