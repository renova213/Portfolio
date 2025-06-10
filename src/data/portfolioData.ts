export interface Project {
  id: string;
  title: string;
  description: string;
  fullDescription: string;
  image: string;
  images: string[];
  category: "web" | "mobile" | "design";
  technologies: string[];
  features: string[];
  challenges: string[];
  duration: string;
  role: string;
  links: {
    live?: string;
    github?: string;
    behance?: string;
  };
}

export interface Skill {
  name: string;
  percentage: number;
}

export interface SocialLink {
  name: string;
  url: string;
  icon: string;
}

export const projects: Project[] = [
  {
    id: "1",
    title: "HonkaiAssistance",
    description:
      "HonkaiAssistance is a game companion app to help you understand more about honkai impact 3.",
    fullDescription:
      "HonkaiAssistance is a game companion app to help you understand more about honkai impact 3. It provides detailed information about characters, weapons, and battlesuits, along with a user-friendly interface for easy navigation. The app includes features like character builds, weapon stats, and battle strategies to enhance the gaming experience.",
    image:
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/aGFsYW1hbl91dGFtYV9paHJzZjA=/preview",
    images: [
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/aGFsYW1hbl91dGFtYV9paHJzZjA=/preview",
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/dGllcl9saXN0X3o2M2oyNA==/preview",
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/aW5mb3JtYXNpX3N0aWdtYXRhX2Z0Z292Yg==/preview",
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/bWVudV9wYW5kdWFuX25wY3FjMg==/preview",
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570529/aW5mb3JtYXNpX2thcmFrdGVyX2o0MWp6ZQ==/preview",
      "https://res-console.cloudinary.com/dpcofvn9b/thumbnails/v1/image/upload/v1749570530/aW5mb3JtYXNpX2VsZl96NnRuZHQ=/preview",
    ],
    category: "mobile",
    technologies: ["Flutter", "Dart", "Firebase", "Figma", "VSCode"],
    features: [
      "List of redeem code",
      "List of character",
      "Detail Character",
      "Tier list character",
      "Guide info",
    ],
    challenges: [
      "Designing an intuitive and visually appealing user interface that effectively presents complex game data (character stats, weapon synergies, battle strategies) in an easily digestible format.",
      "Optimizing app performance and resource usage, especially for image heavy content and detailed data sets, to ensure a smooth user experience across a range of mobile devices.",
      "Handling dynamic content, such as redeem codes, which often have limited availability or specific redemption requirements, and ensuring timely updates and notifications to users.",
    ],
    duration: "2 weeks",
    role: "Flutter Developer",
    links: {
      live: "https://drive.usercontent.google.com/download?id=1gZuJeEvEgsuOzGMbOO1PnZzVGmj0L4oS&export=download&authuser=0&confirm=t&uuid=afca3ed3-0895-4839-99fd-b78a09e1da61&at=APZUnTU1FIyWWCjF9DrrFZojzEr-:1694255056278",
      github: "https://github.com/renova213/honkai_assistance",
    },
  },
  {
    id: "2",
    title: "DAL",
    description:
      "Application for keeping track of your favorite anime and manga series.",
    fullDescription:
      "Application for keeping track of your favorite anime and manga series. Organize and update your daily anime watching or manga reading schedule, and explore upcoming release.",
    image:
      "https://phinconacademy.com/front/assets/img/1715155057-1-subkonten.png",
    images: [
      "https://phinconacademy.com/front/assets/img/1715155057-1-subkonten.png",
      "https://phinconacademy.com/front/assets/img/1715155057-1-subkonten.png",
    ],
    category: "mobile",
    technologies: ["Swift", "UIKit", "CoreData", "ExpressJS", "Figma", "Xcode"],
    features: [
      "Login & Register",
      "Personalized Watchlist",
      "Upcoming Release",
      "Top Series",
      "Daily Schedule",
      "Seasonal Series",
      "Search Series",
      "Reading Manga",
      "Favorite Series",
    ],
    challenges: [
      "Integrating with external APIs (Mangedex) to fetch comprehensive and up-to-date anime and manga data, including series details, release dates, and cover art, while handling API rate limits and data inconsistencies.",
      "Designing and implementing a robust database schema (using CoreData) to efficiently store and manage vast amounts of anime/manga data, user watchlists, reading progress, and preferences, ensuring quick retrieval and smooth user experience.",
      "Developing a real-time synchronization mechanism for user data (watchlists, schedules) between the mobile application and the ExpressJS backend, ensuring data consistency across devices and enabling seamless offline access.",
      "Creating an intuitive and dynamic user interface with UIKit that effectively presents complex information like daily schedules, seasonal series, and top series, allowing for easy navigation and personalized content discovery.",
      "Implementing robust authentication and authorization for user accounts (Login & Register) to secure personal data and ensure only authorized users can access and modify their watchlists and preferences.",
    ],
    duration: "2 weeks",
    role: "Flutter Developer",
    links: {
      live: "https://drive.usercontent.google.com/download?id=1gZuJeEvEgsuOzGMbOO1PnZzVGmj0L4oS&export=download&authuser=0&confirm=t&uuid=afca3ed3-0895-4839-99fd-b78a09e1da61&at=APZUnTU1FIyWWCjF9DrrFZojzEr-:1694255056278",
      github: "https://github.com/renova213/honkai_assistance",
    },
  },
  {
    id: "3",
    title: "MyTelkomsel iOS App",
    description:
      "The official MyTelkomsel application for iOS, providing a comprehensive suite of features for managing Telkomsel mobile services.",
    fullDescription:
      "The MyTelkomsel iOS application allows users to easily manage their Telkomsel prepaid and postpaid numbers. Features include checking credit and data balance, purchasing packages, topping up credit, viewing billing statements, and accessing customer support. The app aims to provide a seamless and intuitive experience for all Telkomsel subscribers on iOS devices.",
    image:
      "https://assets.telkomsel.com/public/2024-06/HEAD-FEATURES-BANNER-WEB%20-%2027_0.png",
    images: [
      "https://assets.telkomsel.com/public/2024-06/HEAD-FEATURES-BANNER-WEB%20-%2027_0.png",
      "https://assets.telkomsel.com/public/2024-06/HEAD-FEATURES-BANNER-WEB%20-%2027_0.png",
    ],
    category: "mobile",
    technologies: [
      "Swift",
      "UIKit",
      "RESTful API",
      "Xcode",
      "Figma",
      "Firebase (for analytics/crash reporting)",
    ],
    features: [
      "Veronika Chat (AI Customer Assistant)",
      "Agent Chat (Live Human Support)",
      "Ticket Reporting / Help Center Access",
    ],
    challenges: [
      "Integrating and Consuming Real-time Chat APIs: Implementing robust and efficient API consumption for both Veronika (AI) and Agent (human) chats, ensuring real-time message delivery, handling diverse message types, and maintaining low latency for a smooth user experience.",
      "Managing Chat State and User Experience: Developing a seamless chat UI/UX within the iOS app that effectively displays conversation history, handles typing indicators, manages message delivery statuses, and provides a clear transition between AI and live agent interactions.",
      "Integrating with Ticketing/Help Center APIs: Consuming APIs for the ticket reporting and help center functionalities to allow users to submit issues, view ticket statuses, and access FAQs directly within the app, requiring careful handling of data submission and retrieval.",
    ],
    duration: "Ongoing (typical for large-scale enterprise apps)",
    role: "iOS Developer / Mobile Application Developer",
    links: {
      live: "https://apps.apple.com/id/app/mytelkomsel/id651412430",
      github: "",
    },
  },
];

export const skills: Skill[] = [
  { name: "JavaScript/TypeScript", percentage: 95 },
  { name: "React/Next.js", percentage: 90 },
  { name: "Node.js/Express", percentage: 85 },
  { name: "Python/Django", percentage: 80 },
  { name: "Database Design", percentage: 88 },
  { name: "Cloud Platforms", percentage: 75 },
];

export const socialLinks: SocialLink[] = [
  { name: "GitHub", url: "https://github.com/renova213", icon: "github" },
  {
    name: "Facebook",
    url: "https://www.facebook.com/rizcorenova",
    icon: "facebook",
  },
];

export const developmentTools = [
  {
    name: "VS Code",
    description: "Code editor",
  },
  {
    name: "Xcode",
    description: "Apple IDE",
  },
  {
    name: "Android Studio",
    description: "Android IDE",
  },
  {
    name: "Git",
    description: "Version control",
  },
  {
    name: "GitHub / GitLab",
    description: "Code hosting",
  },
  {
    name: "Postman",
    description: "API testing",
  },
  {
    name: "Dart DevTools",
    description: "Flutter debugger",
  },
  {
    name: "Figma",
    description: "Design tools",
  },
];
