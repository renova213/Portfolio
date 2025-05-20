import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function getTextWidth(text: string, font: string): number {
  const canvas = document.createElement('canvas');
  const context = canvas.getContext('2d');
  if (!context) return 0;
  
  context.font = font;
  const metrics = context.measureText(text);
  return metrics.width;
}

export function replaceAll(str: string, find: string, replace: string): string {
  return str.split(find).join(replace);
}
