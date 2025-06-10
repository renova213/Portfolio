import { useEffect, useRef } from 'react';

interface Particle {
  x: number;
  y: number;
  size: number;
  speedY: number;
  speedX: number;
  opacity: number;
  element: HTMLDivElement;
}

const ParticleBackground = () => {
  const containerRef = useRef<HTMLDivElement>(null);
  const particlesRef = useRef<Particle[]>([]);

  useEffect(() => {
    const container = containerRef.current;
    if (!container) return;

    const createParticle = (): Particle => {
      const element = document.createElement('div');
      element.className = 'particle absolute rounded-full pointer-events-none';
      
      const size = Math.random() * 6 + 2;
      const x = Math.random() * window.innerWidth;
      const y = window.innerHeight + 20;
      const speedY = -(Math.random() * 2 + 1);
      const speedX = (Math.random() - 0.5) * 1;
      const opacity = Math.random() * 0.8 + 0.2;

      element.style.width = `${size}px`;
      element.style.height = `${size}px`;
      element.style.left = `${x}px`;
      element.style.top = `${y}px`;
      element.style.opacity = opacity.toString();
      element.style.background = `radial-gradient(circle, hsla(260, 70%, 60%, ${opacity}) 0%, transparent 50%)`;

      container.appendChild(element);

      return {
        x,
        y,
        size,
        speedY,
        speedX,
        opacity,
        element,
      };
    };

    const updateParticle = (particle: Particle) => {
      particle.y += particle.speedY;
      particle.x += particle.speedX;
      
      particle.element.style.left = `${particle.x}px`;
      particle.element.style.top = `${particle.y}px`;

      // Remove particle if it goes off screen
      if (particle.y < -20 || particle.x < -20 || particle.x > window.innerWidth + 20) {
        particle.element.remove();
        return false;
      }
      return true;
    };

    const animate = () => {
      // Update existing particles
      particlesRef.current = particlesRef.current.filter(updateParticle);

      // Add new particles occasionally
      if (Math.random() < 0.1 && particlesRef.current.length < 10) {
        const newParticle = createParticle();
        particlesRef.current.push(newParticle);
      }

      requestAnimationFrame(animate);
    };

    // Start animation
    animate();

    // Create initial particles
    for (let i = 0; i < 5; i++) {
      setTimeout(() => {
        const particle = createParticle();
        particlesRef.current.push(particle);
      }, i * 400);
    }

    return () => {
      // Cleanup particles
      particlesRef.current.forEach(particle => {
        particle.element.remove();
      });
      particlesRef.current = [];
    };
  }, []);

  return <div ref={containerRef} className="fixed inset-0 pointer-events-none z-0" />;
};

export default ParticleBackground;
