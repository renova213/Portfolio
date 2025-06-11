import { motion } from "framer-motion";
import { Mail, Phone, MapPin } from "lucide-react";
import { socialLinks } from "../data/portfolioData";
import { FaGithub, FaFacebook, FaLink } from "react-icons/fa";

const ContactSection = () => {
  const getSocialIcon = (iconName: string) => {
    const iconMap: { [key: string]: JSX.Element } = {
      github: <FaGithub className="text-xl text-gray-700 hover:text-black" />,
      facebook: (
        <FaFacebook className="text-xl text-blue-600 hover:text-blue-800" />
      ),
    };
    return iconMap[iconName] || <FaLink className="text-xl text-gray-500" />;
  };

  return (
    <section
      id="contact"
      className="py-20 bg-white dark:bg-gray-900 relative overflow-hidden"
    >
      <div className="absolute inset-0 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-gray-900 dark:to-gray-800" />

      <div className="relative z-10 max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-16">
          <motion.h2
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6 }}
            className="text-4xl font-bold text-gray-900 dark:text-white mb-4"
          >
            Get In Touch
          </motion.h2>
          <motion.div
            initial={{ opacity: 0, scaleX: 0 }}
            whileInView={{ opacity: 1, scaleX: 1 }}
            viewport={{ once: true }}
            transition={{ duration: 0.6, delay: 0.2 }}
            className="w-24 h-1 bg-gradient-to-r from-purple-500 to-pink-500 mx-auto rounded-full mb-8"
          />
        </div>

        <div className="max-w-4xl mx-auto">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ duration: 0.8 }}
            className="glass rounded-2xl p-8"
          >
            <h3 className="text-2xl font-bold text-gray-900 dark:text-white mb-8 text-center">
              Let's Connect
            </h3>

            <div className="grid md:grid-cols-2 gap-8 mb-8">
              <div className="text-center">
                <div className="w-16 h-16 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full flex items-center justify-center mx-auto mb-4">
                  <Mail className="h-6 w-6 text-white" />
                </div>
                <h4 className="font-semibold text-gray-900 dark:text-white mb-2">
                  Email
                </h4>
                <p className="text-gray-600 dark:text-gray-300">
                  rizcorenova31@email.com
                </p>
              </div>

              <div className="text-center">
                <div className="w-16 h-16 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full flex items-center justify-center mx-auto mb-4">
                  <MapPin className="h-6 w-6 text-white" />
                </div>
                <h4 className="font-semibold text-gray-900 dark:text-white mb-2">
                  Location
                </h4>
                <p className="text-gray-600 dark:text-gray-300">Depok</p>
              </div>
            </div>

            <div className="text-center pt-8 border-t border-gray-200 dark:border-gray-700">
              <div className="flex justify-center space-x-4">
                {socialLinks.map((social) => (
                  <div className="flex flex-col items-center">
                    <a
                      key={social.name}
                      href={social.url}
                      className="w-12 h-12 bg-gradient-to-r from-purple-500 to-pink-500 rounded-full flex items-center justify-center text-white hover:shadow-lg transform hover:scale-110 transition-all duration-300"
                    >
                      {getSocialIcon(social.icon)}
                    </a>
                    <p className="font-semibold dark:text-white pt-2">
                      {social.name}
                    </p>
                  </div>
                ))}
              </div>
            </div>
          </motion.div>
        </div>
      </div>
    </section>
  );
};

export default ContactSection;
