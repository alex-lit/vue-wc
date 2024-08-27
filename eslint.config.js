import { config } from '@alexlit/config-eslint';

export default [
  ...config,

  {
    rules: {
      '@typescript-eslint/no-explicit-any': 'off',
      'vue/enforce-style-attribute': 'off',
      'vue/max-lines-per-block': 'off',
    },
  },
];
