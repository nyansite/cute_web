import adapter from '@sveltejs/adapter-static';
import preprocess from 'svelte-preprocess';

export default {
    kit: {
        adapter: adapter({
            pages: 'build',
            assets: 'build',
            fallback: undefined,
            precompress: true,
            strict: true
        })
    },
    preprocess: preprocess()
};

