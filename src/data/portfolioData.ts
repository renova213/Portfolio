export type Skill = {
  name: string;
  category: 'mobile' | 'frontend' | 'backend' | 'other';
};

export type Project = {
  title: string;
  description: string;
  longDescription?: string;
  platform: string;
  technologies: string[];
  features?: string[];
  screenshotUrl?: string;
  year?: string;
  role?: string;
  links: {
    demo?: string;
    github?: string;
    appStore?: string;
    playStore?: string;
    caseStudy?: string;
    website?: string;
  };
};

export type ContactLink = {
  type: 'email' | 'linkedin' | 'github' | 'twitter';
  label: string;
  url: string;
};

export type PortfolioData = {
  name: string;
  title: string;
  about: {
    summary: string[];
    education: string[];
  };
  skills: {
    mobile: string[];
    frontend: string[];
    backend: string[];
    other: string[];
  };
  projects: Project[];
  contact: ContactLink[];
};

export const portfolioData: PortfolioData = {
  name: "Mobile Developer",
  title: "Mobile Developer",
  about: {
    summary: [
      "I'm a passionate mobile developer with expertise in creating intuitive and responsive applications. With 5+ years of experience, I specialize in React Native, Swift, and Flutter development.",
      "My journey in programming began with web development, but I quickly found my passion in creating mobile experiences that users love.",
      "When I'm not coding, you can find me hiking, reading sci-fi novels, or experimenting with new tech."
    ],
    education: [
      "B.S. Computer Science, Tech University (2018)",
      "Mobile Development Certification, Apple Developer Academy (2019)"
    ]
  },
  skills: {
    mobile: ["React Native", "Swift", "Flutter", "Kotlin", "Expo"],
    frontend: ["React", "TypeScript", "JavaScript", "Tailwind CSS", "CSS/SASS"],
    backend: ["Firebase", "Node.js", "Git", "CI/CD", "AWS"],
    other: ["UI/UX Design Principles", "App Store Optimization", "Performance Optimization", "Responsive Design", "Agile Methodology"]
  },
  projects: [
    {
      title: "FitTracker Pro",
      description: "A fitness tracking mobile app with workout plans, progress tracking and social features.",
      longDescription: "FitTracker Pro is a comprehensive fitness application designed to help users achieve their health goals with personalized workout plans, detailed progress tracking, and an engaged community of fitness enthusiasts. The app integrates with health sensors to provide accurate metrics and real-time feedback on workouts.",
      platform: "React Native & iOS",
      technologies: ["React Native", "Swift", "Firebase", "HealthKit", "Redux"],
      features: [
        "Personalized workout recommendations",
        "Real-time heart rate monitoring",
        "Social sharing and challenges",
        "Custom exercise tracking",
        "Nutrition planning and macronutrient calculator"
      ],
      screenshotUrl: "https://images.unsplash.com/photo-1576678927484-cc907957088c?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=300",
      year: "2023",
      role: "Lead Mobile Developer",
      links: {
        demo: "#",
        github: "#",
        appStore: "#"
      }
    },
    {
      title: "TravelCompanion",
      description: "An all-in-one travel app with itinerary planning, offline maps, and local recommendations.",
      longDescription: "TravelCompanion is the ultimate travel planning tool that helps travelers explore new destinations with confidence. The app provides customized itineraries, offline map functionality, and curated local recommendations from trusted sources. It features a unique augmented reality mode to help navigate unfamiliar locations.",
      platform: "Flutter",
      technologies: ["Flutter", "Dart", "Google Maps API", "Firebase", "ARCore/ARKit"],
      features: [
        "Offline maps and navigation",
        "AI-powered itinerary suggestions",
        "Language translation with camera",
        "Local tours and activities booking",
        "Augmented reality point-of-interest finder"
      ],
      screenshotUrl: "https://images.unsplash.com/photo-1527631746610-bca00a040d60?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=300",
      year: "2022",
      role: "Senior Flutter Developer",
      links: {
        appStore: "#",
        playStore: "#",
        caseStudy: "#"
      }
    },
    {
      title: "CryptoTracker Pro",
      description: "Real-time cryptocurrency tracking app with price alerts, portfolio management, and market news.",
      longDescription: "CryptoTracker Pro provides real-time cryptocurrency market data, customizable price alerts, comprehensive portfolio tracking, and the latest market news. The app uses advanced analytics to help users make informed investment decisions with detailed price charts and historical performance data.",
      platform: "React Native",
      technologies: ["React Native", "TypeScript", "CoinGecko API", "Redux", "React Query"],
      features: [
        "Real-time price updates for 5000+ cryptocurrencies",
        "Custom price alerts and notifications",
        "Portfolio performance analytics",
        "Market news and sentiment analysis",
        "Advanced charting with technical indicators"
      ],
      screenshotUrl: "https://images.unsplash.com/photo-1621761191319-c6fb62004040?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&h=300",
      year: "2021",
      role: "Mobile Developer & UI Designer",
      links: {
        website: "#",
        github: "#",
        playStore: "#"
      }
    }
  ],
  contact: [
    {
      type: "email",
      label: "hello@developer.com",
      url: "mailto:hello@developer.com"
    },
    {
      type: "linkedin",
      label: "linkedin.com/in/developer",
      url: "#"
    },
    {
      type: "github",
      label: "github.com/developer",
      url: "#"
    },
    {
      type: "twitter",
      label: "@developer",
      url: "#"
    }
  ]
};
