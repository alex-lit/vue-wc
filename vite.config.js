/* eslint-disable no-undef */
import Vue from '@vitejs/plugin-vue';
import path from 'node:path';
import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    lib: {
      entry: './src/main.ts',
      fileName: 'map-charts',
      name: 'map-charts',
    },
  },

  plugins: [
    Vue({
      customElement: true,
    }),
  ],

  resolve: {
    alias: {
      '~': path.resolve(__dirname, './src'),
    },
  },
});
