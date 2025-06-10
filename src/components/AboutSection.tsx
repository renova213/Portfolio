import { motion } from "framer-motion";

const AboutSection = () => {
  return (
    <section id="about" className="py-20 bg-gray-50 dark:bg-gray-800 relative">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-16">
          <motion.h2
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6 }}
            className="text-4xl font-bold text-gray-900 dark:text-white mb-4"
          >
            About Me
          </motion.h2>
          <motion.div
            initial={{ opacity: 0, scaleX: 0 }}
            whileInView={{ opacity: 1, scaleX: 1 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6, delay: 0.2 }}
            className="w-24 h-1 bg-gradient-to-r from-purple-500 to-pink-500 mx-auto rounded-full"
          />
        </div>

        <div className="max-w-4xl mx-auto">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.8 }}
            className="glass rounded-2xl p-8 text-center"
          >
            <h3 className="text-2xl font-bold text-gray-900 dark:text-white mb-6">
              Dedicated Mobile Developer Specializing in Swift and Flutter
            </h3>
            <p className="text-gray-600 dark:text-gray-300 mb-6 leading-relaxed text-lg">
              With 2 years of experience in mobile development, I specialize in
              building seamless and high-quality applications using Swift and
              Flutter. What started as a curiosity about how mobile apps are
              made has grown into a deep passion for creating impactful,
              user-focused solutions. I take pride in writing clean,
              maintainable code and developing smooth, reliable experiences
              across both iOS and cross-platform environments.
            </p>
            <p className="text-gray-600 dark:text-gray-300 leading-relaxed text-lg">
              Outside of mobile development, I enjoy exploring new technologies,
              and currently i am diving into website development with ReactJS
              and Tailwind. I believe in continuous learning and strive to stay
              updated with the latest trends in the tech industry. My goal is to
              create applications that not only meet user needs but also provide
              delightful experiences.
            </p>
          </motion.div>
        </div>
      </div>
    </section>
  );
};

export default AboutSection;
