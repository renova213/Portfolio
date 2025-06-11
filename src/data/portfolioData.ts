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
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Fhalaman_utama_ihrsf0.png?alt=media&token=900549e4-259a-4b8a-b384-c179799e739a",
    images: [
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Fhalaman_utama_ihrsf0.png?alt=media&token=900549e4-259a-4b8a-b384-c179799e739a",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Fhalaman_utama_ihrsf0.png?alt=media&token=900549e4-259a-4b8a-b384-c179799e739a",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Finformasi_elf_z6tndt.png?alt=media&token=e121ef51-1637-4599-83bc-5b15f3227aae",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Finformasi_karakter_j41jze.png?alt=media&token=c4e1fea2-19f7-4a72-aa89-3d466144cb5d",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Finformasi_stigmata_ftgovb.jpg?alt=media&token=d2354fcf-3538-4033-90c0-00b6869d053e",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Fmenu_panduan_npcqc2.png?alt=media&token=addd4315-15ce-4445-9f32-6e0cbd9e4761",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2Ftier_list_z63j24.png?alt=media&token=d093996e-8bd6-4ca3-8d90-3691a1bb52dc",
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
    role: "iOS Developer Trainee",
    links: {
      live: "",
      github:
        "https://github.com/renova213/bootcamp-swift-phincon-batch-3/tree/main/week_3-4/AnimeList/AnimeList",
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
    duration: "1 Year 3 months",
    role: "iOS Developer / Mobile Application Developer",
    links: {
      live: "https://apps.apple.com/id/app/mytelkomsel/id651412430",
      github: "",
    },
  },
  {
    id: "4",
    title: "Padu",
    description:
      "Padu is a messaging application equipped with calling and video calling features, designed to provide a seamless communication experience.",
    fullDescription:
      "Padu is a messaging application equipped with calling and video calling features, designed to provide a seamless communication experience. It allows users to chat, make voice calls, and conduct video calls with friends and family. The app focuses on user-friendly design and efficient performance, ensuring that users can connect with others easily and reliably.",
    image:
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FSplash.png?alt=media&token=4412029b-e788-4eca-91cb-6aa2fc11b019",
    images: [
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FSplash.png?alt=media&token=4412029b-e788-4eca-91cb-6aa2fc11b019",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FSplash.png?alt=media&token=4412029b-e788-4eca-91cb-6aa2fc11b019",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FCalling.png?alt=media&token=bc728a99-6b1b-4a68-a207-9eb29af0cbaa",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FChat.png?alt=media&token=2ede7895-b087-4a06-9b75-1714c5e966be",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FProfile%20Setting.png?alt=media&token=7f8e3c77-dce6-4c78-9399-fac4efb2a9cb",
    ],
    category: "mobile",
    technologies: [
      "Swift",
      "UIKit",
      "Flutter",
      "Xcode",
      "Dart",
      "Figma",
      "Firebase (for analytics/crash reporting)",
    ],
    features: ["Chat", "Voice Call", "Video Call"],
    challenges: [
      "Integrating with Voice and Video Calling with Zegocloud: Implementing real-time voice and video calling features using Zegocloud's APIs, ensuring low latency, high quality, and reliable connections for users during calls.",
      "Integrating with Chat Engine Zegocloud: Developing a robust chat engine using Zegocloud's APIs to handle real-time messaging, including features like message delivery status, typing indicators, and media sharing, while ensuring data consistency and synchronization across devices.",
      "Integrating with User Profile APIs: Developing a user profile page that allows users to view their profile details, edit their settings, and access their chat history, requiring careful handling of data submission and retrieval.",
    ],
    duration: "4 months",
    role: "Flutter Developer",
    links: {
      live: "",
      github: "",
    },
  },
  {
    id: "5",
    title: "Raise Call",
    description: "Raise Call is an omnichannel CRM and ticketing application.",
    fullDescription:
      "Raise Call is an omnichannel CRM and ticketing application.",
    image:
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FScreenshot%202025-06-11%20at%2009.06.49.png?alt=media&token=22e553df-e3b6-4ae9-aa66-9b59f8f28a43",
    images: [
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FScreenshot%202025-06-11%20at%2009.06.49.png?alt=media&token=22e553df-e3b6-4ae9-aa66-9b59f8f28a43",
      "https://firebasestorage.googleapis.com/v0/b/honkaiassistance.appspot.com/o/files%2FScreenshot%202025-06-11%20at%2009.06.49.png?alt=media&token=22e553df-e3b6-4ae9-aa66-9b59f8f28a43",
    ],
    category: "web",
    technologies: ["React", "Axios", "HTML", "CSS", "Javascript"],
    features: [
      "Omnichannel CRM and ticketing application",
      "Supports agents in managing customer interactions via browser without app installation",
      "Ensures smooth communication, data validation, and ticket monitoring from desktop or laptop devices at any time",
    ],
    challenges: [
      "Implementing a responsive and consistent user interface with the mobile version across various screen sizes and devices",
      "Integrating real-time data (e.g., ticket updates or customer chats) with optimal performance using WebSocket or polling",
      "Maintaining user session security and data validation when interacting with the CRM and ticketing system",
    ],
    duration: "1 months",
    role: "Frontend Developer",
    links: {
      live: "",
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
