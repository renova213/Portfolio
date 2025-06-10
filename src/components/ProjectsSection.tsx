import { motion } from "framer-motion";
import { ExternalLink, Github, Eye } from "lucide-react";
import { usePortfolioStore } from "../store/usePortfolioStore";
import { projects } from "../data/portfolioData";

const ProjectsSection = () => {
  const { selectedFilter, setSelectedFilter, setSelectedProject } =
    usePortfolioStore();

  const filters = [
    { key: "all", label: "All" },
    { key: "web", label: "Web Apps" },
    { key: "mobile", label: "Mobile" },
  ];

  const filteredProjects =
    selectedFilter === "all"
      ? projects
      : projects.filter((project) => project.category === selectedFilter);

  const handleFilterChange = (filter: string) => {
    setSelectedFilter(filter);
  };

  return (
    <section id="projects" className="py-20 bg-white dark:bg-gray-900 relative">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-16">
          <motion.h2
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6 }}
            className="text-4xl font-bold text-gray-900 dark:text-white mb-4"
          >
            Featured Projects
          </motion.h2>
          <motion.div
            initial={{ opacity: 0, scaleX: 0 }}
            whileInView={{ opacity: 1, scaleX: 1 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6, delay: 0.2 }}
            className="w-24 h-1 bg-gradient-to-r from-purple-500 to-pink-500 mx-auto rounded-full mb-8"
          />

          {/* Filter Buttons */}
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6, delay: 0.4 }}
            className="flex flex-wrap justify-center gap-4 mb-12"
          >
            {filters.map((filter) => (
              <button
                key={filter.key}
                onClick={() => handleFilterChange(filter.key)}
                className={`filter-btn px-6 py-2 rounded-full font-medium transition-all duration-300 ${
                  selectedFilter === filter.key ? "active" : ""
                }`}
              >
                {filter.label}
              </button>
            ))}
          </motion.div>
        </div>

        {filteredProjects.length > 0 ? (
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {filteredProjects.map((project, index) => (
              <motion.div
                key={project.id}
                initial={{ opacity: 0, y: 30 }}
                whileInView={{ opacity: 1, y: 0 }}
                viewport={{ once: true }}
                transition={{ duration: 0.6, delay: index * 0.1 }}
                className="project-card glass rounded-2xl overflow-hidden group"
              >
                <div
                  className="relative overflow-hidden cursor-pointer"
                  onClick={() => setSelectedProject(project.id)}
                >
                  <img
                    src={project.image}
                    alt={`${project.title} project screenshot`}
                    className="w-full h-48 object-cover transform group-hover:scale-110 transition-transform duration-500"
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
                  <div className="absolute bottom-4 left-4 right-4 transform translate-y-8 group-hover:translate-y-0 transition-transform duration-300">
                    <div className="flex space-x-2">
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          setSelectedProject(project.id);
                        }}
                        className="p-2 bg-white rounded-full text-purple-600 hover:bg-purple-600 hover:text-white transition-colors duration-200"
                        aria-label="View project details"
                      >
                        <Eye className="h-4 w-4" />
                      </button>
                      {project.links.live && (
                        <a
                          href={project.links.live}
                          onClick={(e) => e.stopPropagation()}
                          className="p-2 bg-white rounded-full text-purple-600 hover:bg-purple-600 hover:text-white transition-colors duration-200"
                          aria-label="View live project"
                        >
                          <ExternalLink className="h-4 w-4" />
                        </a>
                      )}
                      {project.links.github && (
                        <a
                          href={project.links.github}
                          onClick={(e) => e.stopPropagation()}
                          className="p-2 bg-white rounded-full text-purple-600 hover:bg-purple-600 hover:text-white transition-colors duration-200"
                          aria-label="View source code"
                        >
                          <Github className="h-4 w-4" />
                        </a>
                      )}
                    </div>
                  </div>
                </div>

                <div className="p-6">
                  <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-2">
                    {project.title}
                  </h3>
                  <p className="text-gray-600 dark:text-gray-300 mb-4">
                    {project.description}
                  </p>
                  <div className="flex flex-wrap gap-2">
                    {project.technologies.map((tech) => (
                      <span
                        key={tech}
                        className="px-3 py-1 bg-purple-100 dark:bg-purple-900 text-purple-800 dark:text-purple-200 text-sm rounded-full"
                      >
                        {tech}
                      </span>
                    ))}
                  </div>
                </div>
              </motion.div>
            ))}
          </div>
        ) : (
          <motion.p
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 0.5 }}
            className="text-center text-white text-xl font-medium mt-8"
          >
            No projects
          </motion.p>
        )}
      </div>
    </section>
  );
};

export default ProjectsSection;
